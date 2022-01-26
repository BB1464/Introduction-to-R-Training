
getwd() # This is used to get your default working directory in R


# This is used to set your default working directory in R

setwd('C:/Users/USER/Documents/R Projects Files/Introduction to R Training')

setwd('~/R Projects Files/Introduction to R Training')


# Creating of Folder in R
dir.create("Data")
write.csv(x = mtcars,file = 'Data/mtcars.csv',row.names = FALSE)


# Data Import into R
mtcars <- read.csv('Data/mtcars.csv')


# Let Explore mtcars dataset ----------------------------------------------
View(mtcars)
summary(mtcars)
colSums(mtcars)
rowSums(mtcars)



# How to subset a dataframe -----------------------------------------------

mtcars[,1:3] # This select all rows and the first three column

mtcars[3,] # This select row three and all the column

mtcars[3,3] # This select row 3 and column 3

mtcars[1:3,1:3] # This select row 1:3 and column 1:3



# How to access column in a dataframe -------------------------------------

# Here we use a dolar sign

mtcars$mpg # This is used to select mpg column


# Scatter plot using base R

plot(
  mtcars$mpg,
  mtcars$disp,
  xlab = 'mpg',
  ylab = 'disp',
  col = 'blue',
  cex = 1,
  pch = 19
)






