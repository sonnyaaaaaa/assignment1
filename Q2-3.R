# getting a data frame by reading given sample
dataSample <- read.csv(file = 'yourdata.csv')

# finding the most common postal code from our data sample 
mostCommonPostalCode <- which.max(table(dataSample$postal_code))

# printing the result
print(mostCommonPostalCode)
