#Experiment 1a
a<-read.csv("file1.csv",header=TRUE,sep=",")
Length<-c(20,21,22,23,21,20)
Speed<-c(12,14,12,16,20,21)
plot(Length,Speed)

#Experiment 1b
b<-read.delim("file.csv",header=TRUE,sep=",")
col<-c(1,2,3,4,5,6)
b<-cbind(b,col)
write.table(b, "file2.csv", sep="\t", col.names=FALSE)

#Experiment 2
buff_tail<-c(10,1,37,5,12)
garden_bee<-c(8,3,9,6,4)
red_tail<-c(18,9,1,2,4)
carder_bee<-c(8,27,6,32,23)
honey_bee<-c(12,13,16,9,10)
plant_names<-c("Thistle","Golden rain","Yellow alfalfa","Blackberry","Hibiscus")
df<-data.frame(buff_tail,garden_bee,red_tail,carder_bee,honey_bee, row.names = plant_names)
df

#Experiment 3
buff_tail<-c(10,1,37,5,12)
garden_bee<-c(8,3,9,6,4)
red_tail<-c(18,9,1,2,4)
carder_bee<-c(8,27,6,32,23)
honey_bee<-c(12,13,16,9,10)
plant_names<-c("Thistle","Golden rain","Yellow alfalfa","Blackberry","Hibiscus")
bee_names<-c("buff_tail","garden_bee","red_tail","carder_bee","honey_bee")
bees<-c(buff_tail,garden_bee,red_tail,carder_bee,honey_bee)
mat=matrix(bees,nrow=5,ncol=5,byrow=TRUE,dimnames = list(bee_names,plant_names))
mat
  