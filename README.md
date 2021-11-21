# Reliability-data-analysis-Ground-Engaging-Tool-failure

 Sûreté de fonctionnement

I.	Introduction à la base de données réelle
Nous présentons un exemple d'analyse d'un ensemble de données de mesures du temps de défaillance de taille n=127. 
Ces données représentent les défaillances des outils d'attaque au sol (GET) utilisés dans les excavatrices minières de roche dure. Cet ensemble de données provient d'une seule pelle sur une période de 8 ans.
Les outils d'engagement au sol se fixent au godet de la pelle, ils sont également connus sous le nom de « dents » en raison de leur similitude de forme avec les dents humaines. Il y a généralement entre 5 et 8 dents sur un godet. Les GET sont conçus pour s'user et sont remplacés en cas de défaillance fonctionnelle. Cette défaillance fonctionnelle est définie par la capacité de la dent à pénétrer dans la roche et la puissance requise. Chaque événement de défaillance/suspension dans les données représente le remplacement d'une ou plusieurs dents. Les dossiers n'indiquent pas combien de dents sont remplacées à chaque événement.
Ces données ont été collectées dans le cadre d'une base de données d'équipements miniers mobiles décrite dans (Ho, 2016).Les détails sur la collecte, le nettoyage et le traitement des données sont décrits dans (Hodkiewicz, 2016)

II.	Objectif du TP
Nous nous intéressons à l’analyse des données de fiabilité et l'estimation de certaines propriétés de la fiabilité d'un système, ou d'un composant d'un système, y compris la prédiction du temps moyen avant la première défaillance (MTTF).

III.	Travail demandé
Partie 1 :
1.	Nettoyer l’environnement de travail RStudio avec la commande rm.
2.	Affiche le répertoire de travail par défaut.
3.	Définir le nouveau répertoire de travail.
4.	Affiche le nouveau répertoire de travail par défaut.
5.	Importer et lire la base de données dans le fichier « failure_times.csv » vers un objet data.
6.	Vérifier la classe de la variable data.
7.	Afficher les dimensions de data.
8.	Afficher le temps maximal avant la première défaillance
9.	
a.	Retourner le sous-ensemble dont le temps avant la première défaillance est inférieur à 50 mois.
b.	Afficher le sous-ensemble en tant qu’une base de données
10.	 Empiler les données suivant leurs états
Partie 2 :
La base de données dans « failure_times.csv » comprend des mesures censurées. La censure est le processus de codage des mesures d'utilisation (par exemple, le temps) prises là où les pannes ne se sont pas produites. Par exemple, une observation censurée à droite peut se produire parce que l'élément fonctionne toujours au moment de la mesure.
Les valeurs de la colonne d'échec sont codées comme suit :
F  Défaillance : une mesure valide du temps de défaillance, ou
S  Suspension : une mesure censurée à droite.
Cependant, la majorité des packages dans RStudio ne reconnait que le codage binaire pour les données d'échec. Soit : 1  Défaillance et 0  Censure.
1.	Recoder ces valeurs d'échec en valeurs binaires.
2.	Créer un nouvel objet contenant des informations sur le temps avant la première défaillance et l'occurrence de l'évènement d'intérêt.
3.	Empiler les données suivant l'occurrence de l'évènement d'intérêt.
4.	Afficher d'une manière compacte la structure interne du nouvel objet avec la commande str.

Partie 3 :
1.	Installer et charger le package Survival.
2.	Créer la courbe de fiabilité estimé avec la commande survfit.
3.	Dessiner l'estimation non paramétrique de Kaplan-Meier.
4.	Dessiner la distribution de fréquence cumulative empirique des mesures complètes du temps de défaillance.





Bibliographie
Ho, M. (2016). A shared reliability database for mobile mining equipment. . University of Western Australia.: Ph.D. thesis.
Hodkiewicz, M. H. (2016). Cleaning historical maintenance work order data for reliability analysis. Journal of Quality in Maintenance Engineering, 2(2), 146-163.


