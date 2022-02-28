
###########################################################################
###########################################################################
###                                                                     ###
###                       PRACTICAL DEMONSTRATION                       ###
###                                                                     ###
###########################################################################
###########################################################################



# Data Import -------------------------------------------------------------
library(tidyverse)
library(readxl)
library(here)
library(writexl)

install.packages('writexl')
install.packages('here')


# This will write an excel file out of R ----------------------------------

write_xlsx(mtcars,here::here('Data/mtcars.xlsx'))

write.csv(mtcars,here::here('Data/mtcars.csv'),row.names = FALSE)



# This is to read a csv file into R ---------------------------------------

dat <- read_csv(here::here('Data/mtcars.csv'))




# Read an excel file into R -----------------------------------------------

dat1 <- read_excel(here::here('Data/mtcars.xlsx'))




############################################################################
############################################################################
###                                                                      ###
###                              ASSIGNMENT                              ###
###                                                                      ###
############################################################################
############################################################################


# Create a new folder  and name it assignment data

# write a csv and excel file into the folder

# import the csv and excel file into R



############################################################################
############################################################################
###                                                                      ###
###                              Class Work                              ###
###                                                                      ###
############################################################################
############################################################################


# install.packages('openxlsx')
library(openxlsx)

dataset_names <- list('Sheet1' = mtcars, 'Sheet2' = mtcars, 'Sheet3' = mtcars,'sheet4'=mtcars)

write.xlsx(dataset_names, file = 'Data/mydata.xlsx')



############################################################################
############################################################################
###                                                                      ###
###                     INTRODUCTION TO TIDR PACKAGE                     ###
###                                                                      ###
############################################################################
############################################################################

library(tidyverse)

data("table1")
View(table1)


data("billboard")
View(billboard)

# Pivot Longer Function

Billboard_clean_1 <- billboard %>% 
  pivot_longer(cols = c(wk1:wk76),names_to = 'Week',values_to = 'Rank',
               values_drop_na = 'TRUE')

# Second Approach

Billboard_clean_2 <- billboard %>% 
  pivot_longer(cols = -c(1:3),names_to = 'Week',values_to = 'Rank',
               values_drop_na = 'TRUE')

# Third Approach using select helper function
Billboard_Clean_3 <- billboard %>% 
  pivot_longer(starts_with('wk'),names_to = 'Week',values_to = 'Rank',
               values_drop_na = 'TRUE')



###########################################################################
###########################################################################
###                                                                     ###
###                             PIVOT WIDER                             ###
###                                                                     ###
###########################################################################
###########################################################################

Billboard_clean_1 %>% 
  pivot_wider(names_from = 'Week',values_from = 'Rank')




############################################################################
############################################################################
###                                                                      ###
###                               SEPARATE                               ###
###                                                                      ###
############################################################################
############################################################################
data("table3")
View(table3)

Table_Saparate <- table3 %>% 
  separate(col = c('rate'),into = c('Cases','Population'))



###########################################################################
###########################################################################
###                                                                     ###
###                                UNITE                                ###
###                                                                     ###
###########################################################################
###########################################################################

Table_Separate <- Table_Saparate %>% 
  unite(col = 'Rate',sep = '/',c('Cases','Population'))



############################################################################
############################################################################
###                                                                      ###
###                              ASSIGNMENT                              ###
###                                                                      ###
############################################################################
############################################################################

# Use the four functions that we learn today to clean up the world_bank_pop dataset that is in the tidyr package in R



###########################################################################
###########################################################################
###                                                                     ###
###                                DPLYR                                ###
###                                                                     ###
###########################################################################
###########################################################################

# select function

library(tidyverse)

data("starwars")

View(starwars)
names(starwars)

select(.data = starwars,name,height,mass) # This select the first three column in the starwars data set

## We can also select by their index position
select(starwars,1:5)

# Other select helper function

select(starwars,starts_with('h'))# This checks all columns for values that start with letter 'h'

select(starwars,ends_with('e')) # This checks for pattern that ends with 'e'


select(starwars,contains('ar')) # This also checks for specific pattern in our data frame.




###########################################################################
###########################################################################
###                                                                     ###
###                           FILTER FUNCTION                           ###
###                                                                     ###
###########################################################################
###########################################################################

# Check all columns for the number of missing data in each column
colSums(is.na(starwars))

# Remove all the missing data using the filter function

stars <- na.omit(starwars) # Base R function

drop_na(starwars) # Tidyr Function

starwars %>% filter(across(.cols = everything(),~!is.na(.)))


# Filter all eye colour that are blue

dplyr::filter(stars,eye_color=='blue')


# Let us filter out for two conditions in skin_color

filter(stars, skin_color %in%c('fair','light'))


filter(stars,homeworld%in%c('Tatooine','tewjon','Corellia'))

# You need to really understand the logical operators very well before you can master the filter function
# > 
# <
# <=
# >=
# != # not equall to
# | # or
# and # & 

filter(stars,height>100 & skin_color=='fair')


############################################################################
############################################################################
###                                                                      ###
###                              ASSIGNMENT                              ###
###                                                                      ###
############################################################################
############################################################################

# Using all the above logical operator apply the filter function to the diamonds data set from the tidyverse package.

data("diamonds")




###########################################################################
###########################################################################
###                                                                     ###
###                     DPLYR FUNCTIONS CONINUATION                     ###
###                                                                     ###
###########################################################################
###########################################################################

library(tidyverse)

data(iris)
names(iris)

# Mutate function
mutate(iris,Weight=Sepal.Length/2,Mass=Sepal.Length*10) %>% head() # This is used to create a new column


# Transmute Function
transmute(iris,Weight=Sepal.Length/2,Mass=Sepal.Length*10) %>% head() # This is used to create a new column but it will drop all existing column and only retain the new column.

# Group_by

mutate(iris, Weight = Sepal.Length / 2, Mass = Sepal.Length * 10) %>%
  group_by(Species) %>%
  summarise(
    n = n(),
    sd = mean(Sepal.Length),
    Std = sd(Petal.Length),
    SE = Std / sqrt(n)
  ) # The count funtion count every observation based on grouping variable.

# Arrange in accending order with arrange function

mutate(iris, Weight = Sepal.Length / 2, Mass = Sepal.Length * 10) %>%
  group_by(Species) %>%
  summarise(
    n = n(),
    sd = mean(Sepal.Length),
    Std = sd(Petal.Length),
    SE = Std / sqrt(n)
  ) %>%
  arrange(SE)

# Arrange in descending order
mutate(iris, Weight = Sepal.Length / 2, Mass = Sepal.Length * 10) %>%
  group_by(Species) %>%
  summarise(
    n = n(),
    sd = mean(Sepal.Length),
    Std = sd(Petal.Length),
    SE = Std / sqrt(n)
  ) %>%
  arrange(desc(SE))

# Alternatively
# Arrange in descending order
mutate(iris, Weight = Sepal.Length / 2, Mass = Sepal.Length * 10) %>%
  group_by(Species) %>%
  summarise(
    n = n(),
    sd = mean(Sepal.Length),
    Std = sd(Petal.Length),
    SE = Std / sqrt(n)
  ) %>%
  arrange(-SE)


# Summary of all the function using the mtcars dataset
mtcars %>% 
  select(1:11) %>% # This select all the variables
filter(mpg<20)  %>% # This filter all mpg < 20
mutate(Mass=mpg*10) %>% 
group_by(am,gear) %>% 
  summarise(n=n(),Mean=mean(mpg),Std=sd(Mass),SE=Std/sqrt(n)) %>% 
  arrange(-SE)




############################################################################
############################################################################
###                                                                      ###
###                       ACROSS FUNCTION IN DPLYR                       ###
###                                                                      ###
############################################################################
############################################################################

library(tidyverse)
data("iris")
str(iris)

iris %>% 
  summarise(across(where(is.numeric),.fns = mean))

# Select
iris %>% select(across(where(is.character),.fns = as.factor))

#iris %>% select(across(.cols = 5,.fns = factor))


############################################################################
############################################################################
###                                                                      ###
###                      RELATIONAL DATA WITH DPLYR                      ###
###                                                                      ###
############################################################################
############################################################################

# install.packages('nycflights13')
library(nycflights13)

# Mutating Joins
## Left Join
## inner Join
## Right join

flight <- nycflights13::flights
data("airlines")

# left_join
Left_join <- airlines %>% left_join(flight,by = 'carrier')

# Right Join
Right_Join <- flight %>% right_join(airlines,by='carrier')

# Inner_Join
inner_join(airlines,flight,by='carrier')

Inner_Join <- airlines %>% 
  inner_join(flight,by = 'carrier')


# Full_Join
Full_Join <- full_join(airlines,flight)


# Filtering Join
Semi_Join <- airlines %>% 
  semi_join(flight,by = 'carrier')

airlines %>%  
  anti_join(flight,copy = 'carrier')


###########################################################################
###########################################################################
###                                                                     ###
###                              LUBRIDATE                              ###
###                                                                     ###
###########################################################################
###########################################################################

#install.packages('lubridate')
# install.packages('nycflight13')


library(lubridate)
library(nycflights13) # For getting the flight data set
library(tidyverse)


# Date and times is a very difficult objects to work with using base R, but the lubridate package will help us to overcome this challenge.


data("flights")


# Creating the date object from individual string
df <- ymd('2022-02-28')
df1 <- dmy('28-02-2022')
df2 <- mdy(02282022)



# How to create date from date time
df3 <- ymd_hms('2022-02-28 04:06:14')
df4 <- ymd_hm('2022-02-27 07:04')



# Creating Date from an existing date time 
DT <- flights %>% 
  select(year,month,day) %>% 
  mutate(Arrival_Date=make_date(year,month,day))


class(DT)


# Lubridate has alot of accessor functions

today()

now()

head(DT)

# Let me exrract all the year
year(DT$Arrival_Date)




# Alternatively
DT %>%
  mutate(YEAR=year(Arrival_Date)) %>% as_tibble()


# Let me extract all the Month

DT %>%
  mutate(MONTH=month(Arrival_Date)) %>% as_tibble()

# The number of day in a given Week

DT %>%
  mutate(Weekday=wday(Arrival_Date)) %>% as_tibble()

# This is a leap hear
leap_year(date = '2020-02-28')

# This is not a leap year
leap_year(date = '2022-02-28')



