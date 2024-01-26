# MySql_Kiceo
Database sur la ligne 2 de Vannes


---TABLE DES MATIERES---

UNO - Ligne 14 : VOUS TROUVEREZ DES INFORMATIONS GENERALES POUR EXECUTER DES SCRIPTS EN SQL.

DOS -  Ligne 41 : INFORMATIONS SUR LE MCD.

TRES -  Ligne 47 :  SCRIPTS ET ORDRES D'EXECUTION.


1 // Pour exécuter des scripts SQL, vous devez suivre quelques étapes de base. Voici un guide général sur la façon de procéder :

    Choisir un Système de Gestion de Base de Données (SGBD) : Avant de lancer des scripts SQL, vous devez avoir un SGBD installé. Les options populaires incluent MySQL, PostgreSQL, Microsoft SQL Server, Oracle Database, etc. Assurez-vous que le SGBD est correctement installé et configuré sur votre machine ou serveur.

    Accéder à l'interface du SGBD :
        Pour les SGBD comme MySQL ou PostgreSQL, vous pouvez utiliser une interface en ligne de commande telle que MySQL Shell ou psql.
        Pour une interface graphique, des outils comme phpMyAdmin (pour MySQL), pgAdmin (pour PostgreSQL), ou SQL Server Management Studio (pour Microsoft SQL Server) sont disponibles.
        Vous pouvez également utiliser des IDE intégrés comme DataGrip, qui supportent plusieurs SGBD.

    Se connecter à la Base de Données :
        En ligne de commande, utilisez les commandes appropriées pour vous connecter à la base de données. Par exemple, pour MySQL: mysql -u username -p, puis entrez votre mot de passe lorsque vous y êtes invité.
        Dans une interface graphique, entrez les détails de connexion requis (nom d'utilisateur, mot de passe, hôte, etc.) pour accéder à la base de données.

    Sélectionner la Base de Données appropriée : Si vous avez plusieurs bases de données, sélectionnez celle sur laquelle vous voulez travailler avec une commande comme USE nom_de_la_base_de_donnees; en SQL.

    Exécuter les Scripts SQL :
        En ligne de commande, vous pouvez taper votre script SQL directement ou exécuter un fichier de script SQL en utilisant une commande telle que source chemin_du_fichier.sql; pour MySQL.
        Dans une interface graphique, vous pouvez généralement ouvrir ou coller le script SQL dans un éditeur de requête et l'exécuter en cliquant sur un bouton d'exécution.

    Vérifier les Résultats : Après avoir exécuté le script, vérifiez les résultats. S'il y a des erreurs, le SGBD affichera généralement des messages d'erreur explicatifs.

    Sauvegarder les Changements : Si vous effectuez des modifications dans la base de données (insertions, mises à jour, suppressions), assurez-vous de les sauvegarder. Dans certains SGBD, cela peut nécessiter l'exécution d'une commande COMMIT;.

    Fermer la Session : Une fois que vous avez terminé, n'oubliez pas de fermer votre session de base de données, surtout si vous travaillez sur un serveur public ou partagé.

Assurez-vous de respecter les bonnes pratiques de sécurité, notamment en utilisant des mots de passe forts et en limitant les privilèges d'accès aux besoins spécifiques.

2 // Mcd/Dictionnaire :

    Le fichier Mcd.jpg donne des informations sur la conception.
    Vous trouverez également un Schéma.jpg donnant des informations sur le type de données.
    

3 // 


Tout d'abord, vous devez utiliser le script schema.sql pour générer la structure.

Ensuite, executer data.sql pour remplir la base de données.

Pour finir lancer requetes.sql (pas trop loin) pour disposer d'informations sur la meilleure façon d'utiliser le bus.
