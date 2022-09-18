# import necessary library to use functions
library(plyr)

# getting a data frame by reading given sample
dataSample <- read.csv(file = 'yourdata.csv')

# executing logic
mostCommonTopCategory <- ddply(dataSample,.(dataSample$top_category),nrow)

# sorting by entrance in reversed order
sortedMostCommonTopCategory <- mostCommonTopCategory[rev(order(mostCommonTopCategory$V1)),]

# printing the result
print(sortedMostCommonTopCategory)
