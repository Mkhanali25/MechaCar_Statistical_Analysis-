library(dplyr)
library(jsonlite)
install.packages("dplyr")
MechaTable <-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ .,MechaTable)
summary(lm(mpg ~ .,MechaTable))
CoilTable<-read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
summarize <- CoilTable %>% group_by() %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD= sd(PSI), .groups = 'keep') #create summary table with multiple columns
Lot_Summary <- CoilTable %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD= sd(PSI), .groups = 'keep') #create summary table with multiple columns
