# Projet de backend fait avec Symfony
Projet de création de la partie backend d'un Site Web sur l'actualité de théâtre dans l'agglomération lyonnaise. Exercice backend réalisé avec le framework "Symfony".

## Déscription de la structure du projet
Pour ce projet j'ai choisi de créér une base de données qui contient six entités.Voici la liste des entités: 
**article** - prévu pour stocker les données des articles en lien avec l'actualité du théâtre 
**theater** - stockage des données relatives aux noms des salles de théâtre 
(Entre ces deux entités -article et théâtre il existe une relation ManyToMany) 
**category** -on y retrouve les données relatives aux typés d'articles proposés 
**newsletter** - stocke les émails des personnes inscrites avec la date d'inscription et un booléan qui confirme l'inscription. 
**user** - une entité générée avec la commande make:user,  une classe d'entité pour la gestion des utilisateurs.Cette table est liée à la table 

## Données
Grâce à la fonctionnalité "fixtures" dans le fichier "AppFixtures.php" j'ai rempli mes tables avec des données générées de manière automatique. Plus concrétement j'ai fait appel à la bibliothèque "Faker" qui permet de remplir les colonnes avec du contenu aléatoire. 
Cela m'amène au deuxième point important de mon projet - la gestion de la sécurité. 

## Affichage
J'ai défini une ROUTE dans le contrôleur Article avec comme préfixe l'URL suivant:  **/articles/me** 
Cette route permet l'affichage des articles par auteur. Par exemple si je me connecte en tant que administrateur je peux visualiser les articles rédigés par l'administrateur si je me connecte en tant que utilisateur régulier je pourrais accéder aux articles rédigés par l'utilisateur. Dans le fichier **securite.yaml** je permets donc l'accès à ces informations pour tout utilisateur (utilisateur régulier ou administrateur) authentifié. NB, Ce point sera plus dévéloppé dans la partie concernant la sécurité. 

Dans la navbar j'ai la possibilité d'afficher la liste des catégories de mes articles. ensuite je peux séléctionner une catégorie afin d'afficher les articles qui lui sont assosiés. Ceci est possible grâce à l'usage des boucles dans les twigs correspondant. 

## La création d'un article 
Dans le contrôller Articles j'ai défini la Route de création d'un nouvel article: 
**/articles/new**
L'auteur pourrait égalemnt ajouter un image qui est stocké dans le dossier public->img
Chaque utilisateur authentifié pourrait creer un nouvel article. Toutefois la modification d'un article déjà existant n'est possible que par l'administrateur. 
Cela nous amène à l'étape suivante - la gestion de la sécurité. 
## Sécurité 
### Système d'authetification
A l'aide de la commande **make:auth**  j'ai pu mettre en place un système d'authentification de base. 
les mots de passe des personnes inscrites sont hashées toujours à l'aide des fixtures et plus concrétement en utilisant l'interface du PasswordHasher. 

### Le contrôle d'accès
 je me suis servie de l'attribut Route au niveau de la classe "Articles", afin de définir le préfixe d'URL
 Ensuite j'ai configuré le fichier **security.yaml** en modifiant la partie -"access_control:" 
 Cette manipulation m'a permit de restreindre tout ce qui commence par /admin au rôle ROLE_ADMIN - { path: ^/admin, roles: ROLE_ADMIN }
 Les Utilisateurs connectés uniquement (peu importe le rôle)
 roles: IS_AUTHENTICATED_FULLY
 Dans le controller - security je définis un côntrole plus fin  denyAccessUnlessGranted si l'utilisateur n'a pas le droit d'accès une erreur 403 Forbidden est générée 
 gère la page de connexion (/login) en affichant un formulaire de connexion, en gérant les erreurs d'authentification, et il gère également la déconnexion (/logout).

  ### Ajout d'un nouvel article 


 ### Inscription à la newsletter
 Mailer 
 Je dispose d'un container Docker dont le port 25 (SMTP) a été mappé vers votre port 7321

## Problèmes rencontrés 
- pour l'upload de l'image -modifier le fichier php.ini
pour la modification de l'image 