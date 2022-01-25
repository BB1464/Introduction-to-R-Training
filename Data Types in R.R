
# Data Types in R ---------------------------------------------------------

# There are 6 basic data types in R


# Character ---------------------------------------------------------------

dat1 <- c('Tall','Short')
class(dat1)
typeof(dat1)
length(dat1)


# Factor ------------------------------------------------------------------

dat2 <- factor(c('Tall','Short','Medium'))



# Matrix ------------------------------------------------------------------

dat3 <- matrix(data = c(3:3),nrow = 3,ncol = 3)

is.matrix(dat3)
class(dat3)
typeof(dat3)



# Array -------------------------------------------------------------------

dat4 <- array(data = c(0:15))
class(dat4)
typeof(dat4)
is.array(dat4)
is.factor(dat4)


# Numeric -----------------------------------------------------------------

dat5 <- c(3.4,3.7,4.9,2.7)
class(dat5)
typeof(dat5)
is.numeric(dat5)
is.integer(dat5)




# dataframe ---------------------------------------------------------------

dat6 <- data.frame(Colour=c('Fair','Black','Chocolate'),Height=c(22,30,45),Blood_Group=c('A','AB','O'))

class(dat6)
typeof(dat6)
length(dat6)


# List --------------------------------------------------------------------
dat7 <- list(dat3,dat6,dat1,dat2)
class(dat7)
typeof(dat7)
length(dat7)


# Subsetting a list -------------------------------------------------------

# Here we use two square bracket

dat7[[1]] # This return the first object
dat7[[2]] # This return the second object


# Sub_Setting a Object in R -----------------------------------------------
dat6
dat6[1,] # This returns all values in row one with all the columns
dat6[2,] #This returns all values in row two with all the columns
dat6[3,] # This returns all values in row three with all the columns


dat6[,1:3] # This returns the three columns rows at once 

# Subsetting factors in R

dat2[3] # This is used to subset a factor




