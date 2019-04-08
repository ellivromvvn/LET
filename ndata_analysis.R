# BAR PLOTS

plot(ent_let_percentile_data$LET_Results,ent_let_percentile_data$Vocabulary,col="red",varwidth=F,
     horizontal=F,xlab="Result",ylab="Vocabulary")

plot(ent_let_percentile_data$LET_Results,ent_let_percentile_data$Analogy,col="red",varwidth=F,
     horizontal=F,xlab="Result",ylab="Analogy")

plot(ent_let_percentile_data$LET_Results,ent_let_percentile_data$Numerical_Ability,col="red",varwidth=F,
     horizontal=F,xlab="Result",ylab="Numerical Ability")

plot(ent_let_percentile_data$LET_Results,ent_let_percentile_data$Nonverbal_Ability,col="red",varwidth=F,
     horizontal=F,xlab="Result",ylab="Non-Verbal Ability")

#logit regression 

glm.fit<-glm(LET_Results~Vocabulary+Nonverbal_Ability,data=ent_let_percentile_data,
             family = binomial)
glm.fit2<-glm(LET_Results~Vocabulary+Nonverbal_Ability+Analogy+Numerical_Ability,data=ent_let_percentile_data,
              family = binomial)
glm.fit3<-glm(LET_Results~Vocabulary+Nonverbal_Ability+Analogy,data=ent_let_percentile_data,
              family = binomial)