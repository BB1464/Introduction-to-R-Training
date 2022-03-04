
###########################################################################
###########################################################################
###                                                                     ###
###                       DATA VISUALIZATION IN R                       ###
###                                                                     ###
###########################################################################
###########################################################################

library(tidyverse)

# Scatter Plot Demo
ggplot(data=mpg,mapping=aes(x = displ,y = cty,color=drv))+
  geom_point(alpha=0.5)+
  geom_smooth(se=FALSE)+
  facet_wrap(~cyl,nrow = 1,scales = 'free_y')+
  theme_test()+
  theme(strip.background = element_rect(fill = NA))

# Boxplot Demo

ggplot(data = iris,aes(x = Species,y = Sepal.Length,col=Species))+
  stat_boxplot(geom = 'errorbar')+
  geom_boxplot(outlier.shape = NA)+
  theme_minimal()+
  labs(y='Sepal Length')+
  theme(text = element_text(family = 'serif',face = 'bold',size = 15))+
  geom_jitter()
