
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



