ent_let_percentile_data$LET_Results[]


# BAR PLOTS

plot(Entrance_LET_Data$LET_Results,Entrance_LET_Data$Vocabulary,col="red",varwidth=F,
     horizontal=F,xlab="Result",ylab="Vocabulary")

plot(ent_let_percentile_data$LET_Results,ent_let_percentile_data$Vocabulary,col="red",varwidth=F,
     horizontal=F,xlab="Result",ylab="Vocabulary")

plot(ent_let_percentile_data$LET_Results,ent_let_percentile_data$Analogy,col="red",varwidth=F,
     horizontal=F,xlab="Result",ylab="Analogy")

plot(ent_let_percentile_data$LET_Results,ent_let_percentile_data$Numerical_Ability,col="red",varwidth=F,
     horizontal=F,xlab="Result",ylab="Numerical Ability")

plot(ent_let_percentile_data$LET_Results,ent_let_percentile_data$Nonverbal_Ability,col="red",varwidth=F,
     horizontal=F,xlab="Result",ylab="Non-Verbal Ability")

plot(ent_let_percentile_data$LET_Results,ent_let_percentile_data$Vocabulary)
