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

colnames(Data)[1] # 列出第一個欄位名稱

colnames(Data)[4] # 列出第四個欄位名稱(依此類推)

Result1 = lm(Data[,"Weight"]~Data[,"Height"])
summary(Result1)

Result1 = cor.test(Data[,"Weight"], Data[,"Height"], method = "pearson") # Pearson correlation
Result1

Result2 = cor.test(Data[,"Weight"], Data[,"Height"], method = "spearman") # Spearman correlation
Result2