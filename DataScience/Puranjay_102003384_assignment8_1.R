#Puranjay Singh
#102003384
#3CO9
#Assignment 8.1
install.packages("ggplot2")
library(ggplot2)

download.file("https://raw.githubusercontent.com/biocorecrg/CRG_RIntroduction/master/ex12_normalized_intensities.csv", "ex12_normalized_intensities.csv", method="curl")
project1 <- read.table("ex12_normalized_intensities.csv", 
                       sep=",", 
                       header=TRUE, 
                       row.names = 1)

#Ques1_1
ggplot(data=project1, mapping=aes(x=sampleB, y=sampleH)) + geom_point()

#Ques1_2
project1$expr_limits <- "normal"
project1$expr_limits[project1$sampleB > 13 & project1$sampleH > 13] <- "high"
project1$expr_limits[project1$sampleB < 6 & project1$sampleH < 6] <- "low"

#Ques1_3
p <- ggplot(data=project1, mapping=aes(x=sampleB, y=sampleH, color=expr_limits)) + geom_point()

#Ques1_4
install.packages("reshape2")
library(reshape2)
project_long <- melt(data=project1)
ggplot(data=project_long, mapping=aes(x=variable, y=value)) + geom_boxplot()

#Ques1_5
ggplot(data=project_long, mapping=aes(x=variable, y=value, color=expr_limits)) + geom_boxplot()

#Ques1_6
ggplot(data=project1, mapping=aes(x=expr_limits)) + geom_bar()