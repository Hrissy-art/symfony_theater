# Projet de backend fait avec Symfony **/English version below/**
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
**/articles/new** Le chemin vers cette fonctionnalité est uniquement possible quand l'utilisateur est identifié. Il apparait dans la navbar à ce moment là. 
L'auteur pourrait égalemnt ajouter une image qui est stocké dans le dossier public->img
Chaque utilisateur authentifié pourrait creer un nouvel article. Toutefois la modification d'un article déjà existant n'est possible que par l'administrateur via le préfixe url **admin/article/crud** Si l'utilisateur est connecté en tant que admin uniquement, il a la possibilité de modifier les articles. Le lien vers cette foinctionnalité apparait dans la navbar.  
Cela nous amène à l'étape suivante - la gestion de la sécurité. 
## Sécurité 
### Système d'authetification
A l'aide de la commande **make:auth**  j'ai pu mettre en place un système d'authentification de base. 
les mots de passe des personnes inscrites sont hashées toujours à l'aide des fixtures et plus concrétement en utilisant l'interface du PasswordHasher. 

### Le contrôle d'accès
#### Authentification de base 
 la fonctionnalité d'authentification permet une meilleure gestion de la page de connexion (/login) en affichant un formulaire de connexion, en gérant les erreurs d'authentification. La déconnexion (/logout) est également géré. 
 Dans la navbar je peux cliquer sur log in. Si l'utilisateur est connecté, et si c'est le cas, le nom d'utilisateur ou l'identifiant unique de l'utilisateur sera affiché avec {{ app.user.userIdentifier }} pendant toute la durée de la connexion. 
#### confoguration dans security.yaml 
 je me suis servie de l'attribut Route au niveau de la classe "Articles", afin de définir le préfixe d'URL
 Ensuite j'ai configuré le fichier **security.yaml** en modifiant la partie -"access_control:" 
 Cette manipulation m'a permit de restreindre tout ce qui commence par /admin/article/crud au rôle ROLE_ADMIN - { path: ^/admin/article/crud, roles: ROLE_ADMIN }
 Les Utilisateurs connectés uniquement (peu importe le rôle)
 roles: IS_AUTHENTICATED_FULLY
 #### Usage de la méthode utilitaire $this->getUser().
 Dans le controller -Article je définis un côntrole plus fin  à l'aide de **denyAccessUnlessGranted** Je peux afficher uniquement les articles rédigés par l'utilisateur authetifié.  

 ### Inscription à la newsletter
Grâce à MailerInterface je peux paramètrer une réponse automatique à chaque nouvelle souscription à la newsletter.  
 Je dispose d'un container Docker dont le port 25 (SMTP) a été mappé vers le port 7321

## Problèmes rencontrés et perspectives
### Problèmes
Quand j'ai parametré l'upload de mon image j'ai du également modifier le fichier php.ini Je devais authoriser l'extension php_fileinfo. Au début je ne trouvais paspourquoi la manipulation ne fonctionnait pas. 

Concernant l'édition d'un article déjà existant j'ai paramétré un deuxième formulaire qui s'appelle Article1Type 
Toutefois afin de pouvoir modifier l'image je dois en plus créer un transformateur de modèle. Je n'ai pas eu le temps d'ajouter cette possibilité donc pour le moment l'édition est possible sur tous les aspects de l'article sauf l'image. 

### Perspectives
Afin de simplifier la gestion de mon interface ce sera plus simple d'utiliser le bundle Symfony - EasyAdmin. toutefois afin de m'entrainer à l'exercice je voulais gérer mon interface différemment. 

Je pourrais également créer un événement subscriber pour le hashage des mots de passe. 

**/English version/** 

# Backend Project with Symfony 

## Project Structure Description

For this project, I chose to create a database containing six entities. The list of entities includes:

Article: Intended to store data related to theater news articles.
Theater: Stores data related to theater venue names. (There is a ManyToMany relationship between Article and Theater entities.)
Category: Contains data related to types of articles.
Newsletter: Stores emails of subscribed users with the subscription date and a boolean confirming the subscription.
User: An entity generated with the make:user command for user management. This table is linked to the User table.

## Data
I used the "fixtures" functionality in the AppFixtures.php file to populate the tables with automatically generated data. Specifically, I utilized the Faker library to fill columns with random content. This brings us to the second important aspect of my project - security management.

## Display
I defined a route in the Article controller with the URL prefix /articles/me. This route allows the display of articles by the author. For example, if I log in as an administrator, I can view articles written by the administrator. If I log in as a regular user, I can access articles written by that user. In the securite.yaml file, I allow access to this information for any authenticated user (regular user or administrator). Note: This point will be further developed in the security section.

In the navbar, I have the option to display the list of categories for my articles. Then I can select a category to display the articles associated with it. This is possible thanks to the use of loops in the corresponding Twig templates.

## Creating an Article
In the Articles controller, I defined the route for creating a new article: /articles/new. Access to this functionality is only possible when the user is identified. It appears in the navbar at that time. The author could also add an image, which is stored in the public/img folder. Each authenticated user can create a new article. However, the modification of an existing article is only possible by the administrator via the URL prefix admin/article/crud. If the user is connected as an admin only, they have the option to modify articles. The link to this functionality appears in the navbar. This brings us to the next step - security management.

## Security

### Authentication System

With the make:auth command, I was able to set up a basic authentication system. The passwords of registered users are hashed using fixtures and specifically using the PasswordHasher interface.

### Access Control

#### Basic Authentication: The authentication feature allows better management of the login page (/login) by displaying a login form and handling authentication errors. Logout (/logout) is also managed. In the navbar, I can click on log in. If the user is connected, and if so, the username or unique identifier of the user will be displayed with {{ app.user.userIdentifier }} for the duration of the connection.

#### Configuration in security.yaml: I used the Route attribute at the class level in the "Articles" class to define the URL prefix. Then I configured the security.yaml file by modifying the access_control section. This manipulation allowed me to restrict anything starting with /admin/article/crud to the ROLE_ADMIN role - { path: ^/admin/article/crud, roles: ROLE_ADMIN }. Access is granted to authenticated users only (regardless of the role) - roles: IS_AUTHENTICATED_FULLY.

#### Use of the utility method $this->getUser(): In the Article controller, I define a finer control using denyAccessUnlessGranted. I can display only the articles written by the authenticated user.

## Newsletter Subscription

Thanks to MailerInterface, I can set up an automatic response for each new subscription to the newsletter. I have a Docker container whose port 25 (SMTP) has been mapped to port 7321.

## Challenges Encountered and Perspectives

### Challenges
When I configured the upload of my image, I also had to modify the php.ini file. I had to allow the php_fileinfo extension. Initially, I couldn't find why the manipulation was not working.
Regarding the editing of an existing article, I set up a second form called Article1Type. However, to be able to edit the image, I also have to create a model transformer. I didn't have time to add this possibility, so for now, editing is possible on all aspects of the article except the image.

### Perspectives
To simplify the management of my interface, it will be easier to use the Symfony bundle - EasyAdmin. However, to practice the exercise, I wanted to manage my interface differently.
I could also create an event subscriber for password hashing.