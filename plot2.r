setwd("/home/j3ssi/MA/Ausarbeitung/KapitelPartB/")

a <- read.delim("Speicherverbrauch.csv", header = TRUE, sep = "\t", dec = ",")
as.numeric(as.character(a))

plot(a$Batchgroesse, a$Speicherverbrauch2,
     ylab ="Speicherverbrauch",
  xlab="Batchgröße")
gerade1<-lm(a$Speicherverbrauch2 ~ a$Batchgroesse)
par(new=TRUE)
abline( 0.6501  ,0.2573 , col="red" )


b <- read.delim("Blockanzahl.csv", header = TRUE, sep = ",", dec = ",")
as.numeric(as.character(a))

plot(b$Blockanzahl,b$Batchsize2,xlab="Blockanzahl",ylab="maximale Batchgröße",type='h')

plot(b$Blockanzahl,b$Parameteranzahl/b$Blockanzahl,ylab="Quotient aus Parameteranzahl und Blockanzahl", xlab="Blockanzahl")


plot(b$Blockanzahl,b$Parameteranzahl, ylab="Parameteranzahl",xlab="Blockanzahl")
par(new=TRUE)
gerade4<-lm(b$Parameteranzahl~b$Blockanzahl)
plot(b$Blockanzahl,predict(gerade4),type='l',col="blue",ylab="",xlab="")
