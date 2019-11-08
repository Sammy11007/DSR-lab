library("e1071")
buys_computer<-c("no","no","yes","yes","yes","no","yes","no","yes","yes","yes","yes","yes","no")
age<-c("youth","youth","middle","senior","senior","senior","middle","youth","youth","senior","youth","middle","middle","senior")
income<-c("high","high","high","medium","low","low","low","medium","low","medium","medium","medium","high","medium")
student<-c("no","no","no","no","yes","yes","yes","no","yes","yes","yes","no","yes","no")
credit<-c("fair","excellent","fair","fair","fair","excellent","excellent","fair","fair","fair","excellent","excellent","fair","excellent")

df<-data.frame(buys_computer,age,income,student,credit)
df

traindata<-as.data.frame(df[1:13,])
testdata<-as.data.frame(df[14,])
traindata
testdata


check<-naiveBayes(buys_computer~age+income+student+credit,method="class",data=traindata)
check

ans<-predict(check,testdata)
ans

