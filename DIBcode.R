#2D plots
plot(faithful)
plot(iris)
plot(order(rivers))
plot(swiss)
plot(attitude)
plot(cars)
plot(trees)
plot(USJudgeRatings)
plot(USArrests)

#rivers is 1d plot: need something else:
stripchart(rivers,xlab="Length of River (miles)")


#descriptive statistics for each dataset: we extracted mean, sd, se, min, max, range, median for DIB paper
#install.packages("pastecs") #run this the first time you use this program if you don't have this package
library(pastecs)

#set your working directory: where you want the tables to go: easy to put into LaTex this way
#our working directory is redacted setwd("H:\\Students\\Andreas")
#example: setwd("C:\\R_folder")

getstats=function(mydata,outtablename){
	options(scipen=100)
	options(digits=2)
	write.table(round(stat.desc(mydata),2),sep="&",file=outtablename)
	return(stat.desc(mydata))
}


getstats(faithful,"faithfulstats.txt")
getstats(iris[,1:4],"irisstats.txt")
getstats(rivers,"riversstats.txt")
getstats(swiss,"swissstats.txt")
getstats(attitude,"attitudestats.txt")
getstats(cars,"cars.txt")
getstats(trees,"treesstats.txt")
getstats(USJudgeRatings,"ratingsstats.txt")
getstats(USArrests,"arreststats.txt")


#histograms of distances
hist(dist(scale(faithful)),xlab="Distance",main="Histogram of Faithful Distance")
hist(dist(scale(iris[,1:4])),xlab="Distance",main="Histogram of Iris Distance")
hist(dist(scale(rivers)),xlab="Distance",main="Histogram of Rivers Distance")
hist(dist(scale(swiss)),xlab="Distance",main="Histogram of Swiss Distance")
hist(dist(scale(attitude)),xlab="Distance",main="Histogram of Attitude Distance")
hist(dist(scale(cars)),xlab="Distance",main="Histogram of Cars Distance")
hist(dist(scale(trees)),xlab="Distance",main="Histogram of Trees Distance")
hist(dist(scale(USJudgeRatings)),xlab="Distance",main="Histogram of Ratings Distance")
hist(dist(scale(USArrests)),xlab="Distance",main="Histogram of Arrests Distance")

#histograms of first principal component
hist(prcomp(faithful,scale=TRUE)$x[,1],xlab="First Principal Component",main="Histogram of First Component of Faithful")
hist(prcomp(iris[,1:4],scale=TRUE)$x[,1],xlab="First Principal Component",main="Histogram of First Component of Iris")
hist(prcomp(swiss,scale=TRUE)$x[,1],xlab="First Principal Component",main="Histogram of First Component of Swiss")
hist(prcomp(attitude,scale=TRUE)$x[,1],xlab="First Principal Component",main="Histogram of First Component of Attitude")
hist(prcomp(cars,scale=TRUE)$x[,1],xlab="First Principal Component",main="Histogram of First Component of Cars")
hist(prcomp(trees,scale=TRUE)$x[,1],xlab="First Principal Component",main="Histogram of First Component of Trees")
hist(prcomp(USJudgeRatings,scale=TRUE)$x[,1],xlab="First Principal Component",main="Histogram of First Component of Ratings")
hist(prcomp(USArrests,scale=TRUE)$x[,1],xlab="First Principal Component",main="Histogram of First Component of Arrests")