#load our mushrooms dataset into a data table
data_mushrooms <- read.table("agaricus-lepiota.data", header = TRUE, sep = ",")

#what dimension is our dataset
dim(data_mushrooms)

#describe our dataset
str(data_mushrooms)

names(data_mushrooms)

#read the first few lines of data
head(data_mushrooms)

#view the summary of the data
summary(data_mushrooms)

#let's count the numbers of rows
nrow(data_mushrooms)

#looking for missing values
NROW(na.omit(data_mushrooms))

#*****No data is missing. All rows have values*****

my_new_mushrooms <- cbind(data_mushrooms[,1:4], data_mushrooms[,6])
head(my_new_mushrooms)

#reading the names
names(my_new_mushrooms)

#let's rename all those column names
colnames(my_new_mushrooms) <- c("edibleORpoisonous","shape","surface","color","odor")

#let's read few rows of our subset now
head(my_new_mushrooms)

#Let's change the values of edibleORpoisonous to some thing readable
levels(my_new_mushrooms$edibleORpoisonous)[levels(my_new_mushrooms$edibleORpoisonous)=='p'] <- 'poisonous'
levels(my_new_mushrooms$edibleORpoisonous)[levels(my_new_mushrooms$edibleORpoisonous)=='e'] <- 'edible'

#Let's read now
head(my_new_mushrooms)

#et's rename the values of the shape variable:
levels(my_new_mushrooms$shape)[levels(my_new_mushrooms$shape)=='b'] <- 'bell'
levels(my_new_mushrooms$shape)[levels(my_new_mushrooms$shape)=='c'] <- 'conical'
levels(my_new_mushrooms$shape)[levels(my_new_mushrooms$shape)=='x'] <- 'convex'
levels(my_new_mushrooms$shape)[levels(my_new_mushrooms$shape)=='f'] <- 'flat'
levels(my_new_mushrooms$shape)[levels(my_new_mushrooms$shape)=='k'] <- 'knobbed'
levels(my_new_mushrooms$shape)[levels(my_new_mushrooms$shape)=='s'] <- 'sunken'

head(my_new_mushrooms)

summary(my_new_mushrooms)
str(my_new_mushrooms)

#Compare how many mushroom are edible or poisonous through a plot
plot(my_new_mushrooms$edibleORpoisonous)

#shape
plot(my_new_mushrooms$shape)
