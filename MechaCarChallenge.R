library(dplyr)

#Read in MecahaCar csv
mecha_table <- read.csv(file = 'MechaCar_mpg.csv',check.names = F,stringsAsFactors = = F)

# Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)

# Determine the p-value and r-squared of the linear regression module.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table))

# Read in Suspension Coil csv
sc_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create total summary
total_summary <- sc_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) 

# Create lot summary
lot_summary <- sc_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

#  t-test across all lots
t.test(lot_summary$Mean,mu=1500)

# t-test lot 1
Lot1 <- sc_table[which(sc_table$Manufacturing_Lot=="Lot1"),]
t.test(Lot1$PSI,mu=1500)

# t-test lot 2
Lot2 <- sc_table[which(sc_table$Manufacturing_Lot=="Lot2"),]
t.test(Lot2$PSI,mu=1500)

# t-test lot 3
Lot3 <- sc_table[which(sc_table$Manufacturing_Lot=="Lot3"),]
t.test(Lot3$PSI,mu=1500)