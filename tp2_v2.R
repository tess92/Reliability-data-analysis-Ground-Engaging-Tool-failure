# Partie 1

# Nettoyer votre environnement de travail avec la commande rm

rm(list = ls())

# #Affiche le r�pertoire de travail par d�faut
getwd()

# D�finir le nouveau r�pertoire de travail
setwd("C:/Users/21694/Desktop")

# Affiche le nouveau r�pertoire de travail par d�faut
getwd()


# Importer et lire la base de donn�es
data <- read.csv("jdida.csv")

# V�rifier la classe de la variable
class(data)

# afficher les dimensions de la dataframe
dim(data)


# Afficher le temps maximal avant la premiere d�faillance
highest_time <- max(data$time)
highest_time


#Afficher les donn�es dont le temps avant la premi�re d�faillance est inf�rieur � 50 mois
moins_de_50 <- subset( data, time < 50)
moins_de_50

#afficher la base de donn�es
##############################View(moins_de_50)


# Partie 2

# Empiler les donn�es suivant leurs �tats. Combien y-a-t il de cas de d�faillances?
stack(table(data$�..fail))

#
data$�..fail <- ifelse(data$�..fail =="S","T",0)
data$�..fail

