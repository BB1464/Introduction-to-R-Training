
###########################################################################
###########################################################################
###                                                                     ###
###                   INTRODUCTION TO JANITOR PACKAGE                   ###
###                                                                     ###
###########################################################################
###########################################################################


library(tidyverse)
library(janitor)
library(readxl)



# Import the dataset 

demo <- read_excel('Data/demo.xlsx') %>% clean_names()

head(demo)


data("starwars")
head(starwars)

# Adorn Family of Function using janitor package
starwars %>% 
  tabyl(gender) %>% 
  adorn_totals() %>% 
  adorn_percentages() %>% 
  adorn_pct_formatting() %>% 
  knitr::kable()


# get_dupes for getting all duplicate

starwars %>% 
  get_dupes(name)

# let me create an object
 dat1 <- data.frame(Genotype=c('G1','G2','G3','G1','G4','G5','G4'),PH=c(30,20,5,50,50,70,20))
 
 
 head(dat1)
 
 dat1 %>% 
   get_dupes(Genotype)
 
 
 # Convert_to_date
 
# This convert the object to date 
 convert_to_date(x = demo$date)

 # This convert the object to date_time
  convert_to_datetime(demo$date)
  
  
  # excel_numeric_to_date
  
  excel_numeric_to_date(41046)

  excel_numeric_to_date(41103)
  
  
  excel_numeric_to_date(7403)
  
  
  excel_numeric_to_date(5244)
  
  
  