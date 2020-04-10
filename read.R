library(data.table)

x<-readLines('wcards.txt')

x<-gsub("<>","|",x)


wcards<-read.table(text = x, sep = "|",header = FALSE)
wcards<-data.table(wcards)

wcards<-t(wcards)


x<-readLines('bcards.txt')

x<-gsub("<>","|",x)


bcards<-read.table(text = x, sep = "|",header = FALSE)
bcards<-data.table(bcards)

bcards<-t(bcards)

bcards<-fread('bcards.csv')
