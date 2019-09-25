library(tidyverse)
library(ggplot2)
library(dplyr)
aaa<-load("supermarket.RData")
supermarket<-read.csv("supermarket_sales.csv",header=TRUE)

#supermarket$City
#supermarket$City <- ordered(supermarket$City)

#ggplot(diamonds, aes(diamonds$class))+geom_bar()
#plot banyaknya member sama normal per kota
ggplot(data=supermarket,aes(x=City,fill=Customer.type))+
  geom_bar(position = "dodge")+
  labs(y="Transaction count")

ggg<-filter(supermarket,City=="Naypyitaw")
ggplot(data=ggg,aes(x=Product.line,fill=Gender))+
  geom_bar(position = "dodge")+
  labs(x="Product Line", y="Transaction count", title="Naypyitaw")

ggplot(data=supermarket,aes(x=Product.line,y=Total))+
  geom_boxplot()+
  labs(x="Product Line", y="Total Spendings")+
    scale_y_continuous(breaks = seq(0, 1100, 50))

ggg<-filter(supermarket,City=="Naypyitaw")
ggplot(data=supermarket,aes(x=Product.line,y=Total, fill=City))+
  geom_boxplot()+
  labs(x="Product Line", y="Total Spendings",title="All Cities")+
  scale_y_continuous(breaks = seq(0, 1100, 50))

ggplot(data=supermarket,aes(x=Payment))+
  geom_bar(position = "dodge")+
  labs(x="Product Line", y="Total Spendings",title="All Cities")
+scale_y_continuous(breaks = seq(0, 1100, 50))

ggplot(data=supermarket,aes(x=City,fill=Payment))+
  geom_bar(position = "dodge")+
  labs(x="Payment Method", y="Transaction count", title="All Cities")



+
  labs(x="Product Line", y="Transaction count")

ggg<-filter(supermarket,City=="Yangon")
ggplot(data=supermarket,aes(x=City,fill=Gender))+
  geom_bar(position = "dodge")+
  labs(y="Transaction count",x="City",title="All cities")

ggplot(data=supermarket,aes(x=City,fill=Gender))+
  geom_bar(position = "dodge")+
  labs(y="Transaction count",x="City",title="All cities")


ggplot(data=supermarket,aes(x=Customer.type,fill=Gender))+
  geom_bar(position = "dodge")+
  labs(x="Using member card / not",y="Transaction count")


#plot yang sudah pake member vs normal per jenis kelamin
ggplot(data=supermarket,aes(x=Customer.type,fill=Gender))+
  geom_bar(position = "dodge")

#plot yang sudah pake member vs normal per jumlah total belanjaan
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

ggg<-filter(supermarket,City=="Mandalay")
ggplot(data=ggg,aes(x=Total,fill=Customer.type))+
  geom_histogram(binwidth = 100)

ggg<-filter(supermarket,City=="Yangon")
ggplot(data=ggg,aes(x=Customer.type,fill=Gender))+
  geom_bar(position="dodge")

ggg<-filter(supermarket,City=="Mandalay")
ggplot(data=supermarket,aes(x=Payment,fill=Customer.type))+
  geom_bar(position="dodge")

#Jumlah orang yang pakai member or normal per barang yang paling banyak dibeli dalam satu keranjang
ggplot(data=supermarket,aes(x=Product.line,fill=Customer.type))+
  geom_bar(position="dodge")

ggplot(data=supermarket,aes(x=Product.line,y=Total,fill=Customer.type))+
  geom_col(position="dodge")

ggplot(data=supermarket,aes(x=Quantity,fill=Customer.type))+
  geom_bar(position="dodge")

ggplot(data=supermarket,aes(x=Rating,fill=Customer.type))+
  geom_histogram(binwidth=2)

ggplot(data=supermarket,aes(x=Date,y=Quantity,fill=Customer.type))+
  geom_line()

ggplot(data=supermarket,aes(x=Product.line,y=Total,fill=Customer.type))+
  geom_col(position = "dodge")
