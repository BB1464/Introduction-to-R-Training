
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

tolower(month.name) # This convert the month to lower case
toupper(month.abb) # This convert the month to upper case




# Exploring Functions from Base R -------------------------------

# Let us use the iris data set for demonstration

data(iris)

iris

?grep

grep(pattern = 'virginica',x = iris$Species) # this line check if their is virginica in the Species column in the iris data set

?grepl

grepl(pattern = 'setosa',x = iris$Species) # this line check if their is setosa in the Species column in the iris data set

unique(x = iris$Species) # This checks for unique values in the Species column using the iris data set

?sub

sub(pattern = 'setosa',replacement = 'TRUE',x = iris$Species)

# Let me create a character vector
Vec_Character <- c('Hello World')

nchar(Vec_Character) # This check for the number of characters in a character vector

unique(Vec_Character) # This check for the number of unique values in a character vector


print(Vec_Character) # This print the character vector



#### 02-Feb- 2022 #####

getwd() # This shows you your absolute path on your system


# setwd(dir = '~/R Projects Files/Introduction to R Training/')

?source

source('Script/Data Import.R',print.eval = TRUE)

library(tidyverse)

data("mtcars")
View(mtcars)

mtcars %>% glimpse()

# Check for unique values in each column
mtcars %>% map(.f = unique)


# Convert Some Columns to factors 

mtcars_trans <- mtcars %>%  # Pipe
  mutate(across(.cols = c('vs','am','cyl'),.fns = as.factor))


glimpse(mtcars_trans)



# Summary of the data

summary(mtcars_trans)


# Regression Analysis in R

shapiro.test(mtcars_trans$mpg) # Our dataset is normally distributed

bartlett.test(x = mtcars_trans$mpg,g = mtcars_trans$cyl) # The variance was heterogeneous


model <- lm(formula = mpg~cyl+vs,data = mtcars_trans)
anova(model)
plot(model) # Diagnostic plot

summary(model)
