#Bar Plots

plot(Entrance_LET_Data$LET_Results,Entrance_LET_Data$Vocabulary,col="red",varwidth=F,
     horizontal=F,xlab="Result",ylab="Vocabulary")

plot(Entrance_LET_Data$LET_Results,Entrance_LET_Data$Analogy,col="red",varwidth=F,
     horizontal=F,xlab="Result",ylab="Analogy")

plot(Entrance_LET_Data$LET_Results,Entrance_LET_Data$Numerical_Ability,col="red",varwidth=F,
     horizontal=F,xlab="Result",ylab="Numerical Ability")

plot(Entrance_LET_Data$LET_Results,Entrance_LET_Data$Nonverbal_Ability,col="red",varwidth=F,
     horizontal=F,xlab="Result",ylab="Non-Verbal Ability")

#logit regression 

glm.fit<-glm(LET_Results~Vocabulary+Nonverbal_Ability,data=Entrance_LET_Data,
             family = binomial)
glm.fit2<-glm(LET_Results~Vocabulary+Nonverbal_Ability+Analogy+Numerical_Ability,data=Entrance_LET_Data,
             family = binomial)
glm.fit3<-glm(LET_Results~Vocabulary+Nonverbal_Ability+Analogy,data=Entrance_LET_Data,
              family = binomial)


summary(glm.fit)
coef(glm.fit)

glm.probs<-predict(glm.fit,type="response")
glm.probs

plot(glm.probs)

glm.pred<-rep("Failed",97)
glm.pred[glm.probs>=0.5]<-"Passed"
table(glm.pred,Entrance_LET_Data$LET_Results)

#correct classification rate
mean(glm.pred==Entrance_LET_Data$LET_Results)
