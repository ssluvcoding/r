equakes<-datasets::quakes
head(equakes,10)
tail(equakes,10)
equakes[100,c(1,2)]
equakes[100:200,c(1,2,3)]
df<-equakes[,-5]
#summary
summary(equakes)
summary(equakes$mag)
#plot
plot(equakes)
plot(equakes$mag)
plot(equakes$mag,equakes$depth,type='p')
# line plot
plot(equakes$mag,type='l',col='red')
plot(equakes$depth,equakes$mag,xlab='latitude',ylab = 'longitude',main="lat long",
     col='blue',type='l')

#bar plot
barplot(equakes$mag,main='Earthquakes',xlab='magnitude',horiz=T,axes=T)

sd(equakes$mag,na.rm=T)# 0.404773

var()