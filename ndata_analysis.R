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

glm.fit<-glm(LET_Results~Vocabulary+Nonverbal_Ability+Analogy+Numerical_Ability,data=ent_let_percentile_data,
              family = binomial)
glm.fit2<-glm(LET_Results~Vocabulary+Nonverbal_Ability+Numerical_Ability,data=ent_let_percentile_data,
              family = binomial)
glm.fit3<-glm(LET_Results~Vocabulary+Nonverbal_Ability,data=ent_let_percentile_data,
              family = binomial)
glm.fit4<-glm(LET_Results~Nonverbal_Ability,data=ent_let_percentile_data,
              family = binomial)

summary(glm.fit4)
coef(glm.fit3)

glm.probs<-predict(glm.fit2,type="response")
glm.probs

plot(glm.probs)

glm.pred<-rep("failed",97)
glm.pred[glm.probs>=0.5]<-"passed"
table(glm.pred,ent_let_percentile_data$LET_Results)

#correct classification rate
mean(glm.pred==ent_let_percentile_data$LET_Results)

#predicting with new data

Vocabulary<-39
Analogy<-32
Numerical_Ability<-70
Nonverbal_Ability<-50
a<-data.frame(Vocabulary,Analogy,Numerical_Ability,Nonverbal_Ability)

predict(glm.fit2,newdata = a, type = "response")

Vocabulary<-39
Numerical_Ability<-70
Nonverbal_Ability<-50
b<-data.frame(Vocabulary,Numerical_Ability,Nonverbal_Ability)

predict(glm.fit2,newdata = b, type = "response")