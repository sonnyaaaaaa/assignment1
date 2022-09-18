# import necessary library to use functions
library(plyr)

# getting a data frame by reading given sample
dataSample <- read.csv(file = 'yourdata.csv')

# executing logic
mostCommonNaicsCode <- ddply(dataSample,.(dataSample$naics_code),nrow)

# sorting by entrance in reversed order
sortedMostCommonNaicsCode <- mostCommonNaicsCode[rev(order(mostCommonNaicsCode$V1)),]

# printing top 2 most common naics codes
print(head(sortedMostCommonNaicsCode, 2))
