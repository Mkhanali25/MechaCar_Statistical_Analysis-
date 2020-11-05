library(dplyr)
install.packages("dplyr")
MechaTable <-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ .,MechaTable)
summary(lm(mpg ~ .,MechaTable))
CoilTable<-read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
summarize <- CoilTable %>% group_by() %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD= sd(PSI), .groups = 'keep') #create summary table with multiple columns
Lot_Summary <- CoilTable %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD= sd(PSI), .groups = 'keep') #create summary table with multiple columns
sample_table <- CoilTable %>% sample_n(50) #generate 50 randomly sampled data points
t.test(log10(sample_table$PSI),mu=mean(log10(CoilTable$PSI))) #compare sample versus population means
sample_table2 <- CoilTable %>% sample_n(50) #generate another 50 randomly sampled data points
t.test(log10(sample_table$PSI),log10(sample_table2$PSI)) #compare means of two samples
t.test(sample_table$PS,sample_table2$PSI,paired = T) #compare the mean difference between two samples
