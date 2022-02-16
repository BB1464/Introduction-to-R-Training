
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



# This is to read a csv file into R ---------------------------------------

dat <- read_csv(here::here('Data/mtcars.csv'))




# Read an excel file into R -----------------------------------------------

dat1 <- read_excel(here::here('Data/mtcars.xlsx'))






