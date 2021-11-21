# Partie 1

# Nettoyer votre environnement de travail avec la commande rm

rm(list = ls())

# #Affiche le répertoire de travail par défaut
getwd()

# Définir le nouveau répertoire de travail
setwd("C:/Users/21694/Desktop")

# Affiche le nouveau répertoire de travail par défaut
getwd()


# Importer et lire la base de données
data <- read.csv("jdida.csv")

# Vérifier la classe de la variable
class(data)

# afficher les dimensions de la dataframe
dim(data)


# Afficher le temps maximal avant la premiere défaillance
highest_time <- max(data$time)
highest_time


#Afficher les données dont le temps avant la première défaillance est inférieur à 50 mois
moins_de_50 <- subset( data, time < 50)
moins_de_50

#afficher la base de données
##############################View(moins_de_50)


# Partie 2

# Empiler les données suivant leurs états. Combien y-a-t il de cas de défaillances?
stack(table(data$ï..fail))

#
data$ï..fail <- ifelse(data$ï..fail =="S","T",0)
data$ï..fail

