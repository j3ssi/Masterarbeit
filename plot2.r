setwd("/home/j3ssi/MA/Ausarbeitung/KapitelPartB/")

a <- read.delim("Speicherverbrauch.csv", header = TRUE, sep = "\t", dec = ",")
as.numeric(as.character(a))

plot(a$Batchgroesse, a$Speicherverbrauch2,
     ylab ="Speicherverbrauch",
  xlab="Batchgröße")
gerade1<-lm(a$Speicherverbrauch2 ~ a$Batchgroesse)
par(new=TRUE)
abline( 0.6501  ,0.2573 , col="red" )
