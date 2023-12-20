Data = read.table("Example.txt", header = TRUE)
head(Data, 10)

summary(Data) 

Result = lm(Weight~Height, data = Data) #linear regression test
Result

summary(Result)

plot(Data$Height, Data$Weight, pch = 19)
abline(Result)

Data=read.table("Example.txt", header = TRUE)
colnames(Data)  
