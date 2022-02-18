
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
