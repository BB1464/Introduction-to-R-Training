
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


####################################################                       
###    Working with Objects in R ######################
###                              ######################
#######################################################
#######################################################                   
#######################################################                      
data_new <- data.frame(Height=c(10,20,40,NA,30,NA),DT50FL=c(10,20,40,NA,NA,20))


View(data_new)
mean(data_new$Height,na.rm = TRUE)

mean(data_new$DT50FL,na.rm = TRUE)

.data <- c(1:10)

ls() # This list all the objects in our environment

ls(all.names = TRUE) # This list all object in our  environment with the hidden object

search() # This shows all the object in our global environment

letters <- letters # This shows all letters in lower case

LETTERS <- LETTERS # This shows all letters in upper case

# tolower() and toupper()

tolower(LETTERS) # This convert the upper case to lower case

toupper(letters) # This convert the lower case to upper case


# Month  --------------------------------------------------------------

month.abb <- month.abb # This shows the Month in abbreviated form

month.name <- month.name # This shows the Month in Full


# Apply the toupper and tolower function to the month ------------------



