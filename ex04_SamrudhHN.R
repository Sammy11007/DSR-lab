library(gcookbook)
data(cabbage_exp)
cabbage_exp
t1<-cabbage_exp$Weight[cabbage_exp$Cultivar=="c39"]
t2<-cabbage_exp$Weight[cabbage_exp$Cultivar=="c52"]
t1
t2
library(ggplot2)
ggplot(cabbage_exp,
       aes(x=Date,y=Weight,fill=Cultivar))+geom_bar(stat="identity",position ="dodge",color="black")+ geom_text(aes(label=Weight),
       vjust=1.5,color="white",position=position_dodge(.9),size=3)


library(MASS)
data("birthwt")
birthwt
boxplot(birthwt$bwt~birthwt$age,data = birthwt,xlab="Age",ylab="Birth Weight", range=0,main="Samrudh HN plot")
