library(tidyverse)
library(ggplot2)

supermarket<-read.csv("supermarket_sales.csv",header=TRUE)

#supermarket$City
#supermarket$City <- ordered(supermarket$City)

#ggplot(diamonds, aes(diamonds$class))+geom_bar()
#plot banyaknya member sama normal per kota
ggplot(data=supermarket,aes(x=City,fill=Customer.type))+
  geom_bar(position = "dodge")

#plot yang sudah pake member vs normal per jenis kelamin
ggplot(data=supermarket,aes(x=Customer.type,fill=Gender))+
  geom_bar(position = "dodge")


ggplot(data=supermarket,aes(x=Total,fill=Customer.type))+
  geom_histogram(binwidth = 100)

#  geom_col(position = "dodge")
  
ggplot(data=supermarket,aes(x=Time,fill=Customer.type))+
  geom_histogram(stat="count",binwidth=100)


ggplot(data=diamonds, aes(x=cut, fill=color))+ 
  geom_bar(position=position_dodge())

g<-ggplot(data=supermarket,aes(x=City,y=Total,fill=Customer.type))
g+geom_col(stat_sum(),position=position_dodge())

#xx<-diamonds
#summary(supermarket)

