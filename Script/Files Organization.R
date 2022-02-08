# Dir.create # This helps us to create a new dir in our current working directory.

# How to check the list of files in a given folder or directory
list.files('Script')

# How to write data set as csv into a folder in R
write.csv(mtcars,file = 'Data/mtcars.csv',FALSE)

write.csv(x = iris,file = 'Data/iris.csv',row.names = FALSE)

# How to import a data set into R
mtcars <- read.csv('Data/mtcars.csv')
View(mtcars)
class(mtcars)
head(mtcars)
tail(mtcars)
str(mtcars)
summary(mtcars)

mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$vs <- as.factor(mtcars$vs)
mtcars$am <- as.factor(mtcars$am)
mtcars$gear <- as.factor(mtcars$gear)

str(mtcars)

# ls() # This shows the list of objects in your environment
ls()


# Within your data folder you have male folder but write an assignment folder inside your male folder

# Write cars data set into the data folder as a csv file

# write the iris data set inside the assignment folder as a csv file

# read the two data set into R and assign it into a different object

