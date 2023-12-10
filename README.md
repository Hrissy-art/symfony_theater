# Projet de backend fait avec Symfony
Projet  Site Web concernant l'actualité de théâtre dans l'agglomération lyonnaise. Exercice backend avec Symfony

## Déscription de la structure
Pour ce projet j'ai choisi de créér une base de données qui contient six entités.
**article** - prévu pour stocker les données des articles en lien avec l'actualité du théâtre 
**theater** - ou je stocke les données relatives aux noms des salles de théâtre 
(Entre ces deux entités il existe une relation ManyToMany) 
**category** - les données relatives aux typés d'articles proposés 
**newsletter** - stocke les émails des personnes inscrites avec la date d'inscription et un booléan qui confirme l'inscription. 
**user** - une entité générée avec la commande make:user,  une classe d'entité pour la gestion des utilisateurs

## Données
Grâce à la fonctionnalité "fixtures" dans le fichier "AppFixtures.php" j'ai rempli mes tables avec des données générées de manière automatique. Plus concrétement j'ai fait appel à la bibliothèque "Faker" qui permet de remplir les colonnes avec du contenu aléatoire. 
Cela m'amène au deuxième point important de mon projet - la gestion de la sécurité. 
## Sécurité 
### Système d'authetification
A l'aide de la commande make:auth j'ai pu mettre en place un système d'authentification de base. 
les mots de passe des personnes inscrites sont hashées à l'aide des fixtures 