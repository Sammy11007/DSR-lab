library(datasets)
head(iris)
library(ggplot2)
ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()
set.seed(20)
irisCluster <- kmeans(iris[, 3:4], 3, nstart = 20)
irisCluster
irisCluster$cluster <- as.factor(irisCluster$cluster)
ggplot(iris, aes(Petal.Length, Petal.Width, color = iris$cluster)) + geom_point()


Length<-c(20,21,22,23,21,20)
Speed<-c(12,14,12,16,20,21)
df<-data.frame(Length,Speed)
clus<-kmeans(df,5,nstart=20)
clus
ggplot(df,aes(Length,Speed))+geom_point()
