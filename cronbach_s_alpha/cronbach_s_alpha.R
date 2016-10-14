
# In statistics (classical test theory), Cronbach's alpha is used as a (lowerbound) estimate 
#of the reliability of a psychometric test.
# (wikipedia : https://en.wikipedia.org/wiki/Cronbach%27s_alpha )

#Cronbach's alpha in R :

# reading data file
data = read.table('data.txt', header=TRUE, row.names=1)
data
#convert categorical variables (factors) to numeric :
data <- sapply(data[], as.numeric)
data

k <- ncol(data)
colVariance <- apply(data, 2, var)
total<- sum(var(data))
alpha <- (k/(k-1)) * (  1- sum(colVariance)/total)  
alpha

