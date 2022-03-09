
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


# Histogram

ggplot(data=mtcars,mapping = aes(x = mpg,fill=factor(gear)))+
  geom_histogram(binwidth = 1)+
  scale_fill_discrete(name='gear')


# Violin Plot
ggplot(data = iris,aes(x = Species,y=Petal.Length,fill=Species))+
  geom_violin()


# Density Plot
ggplot(data = iris,aes(x=Petal.Length,fill=Species))+
  geom_density()+
  theme_classic()+
  coord_cartesian(expand = c(0,0))+
  theme(axis.ticks = element_line(size = 1,linetype = 1),
        text = element_text(family = 'serif',face = 'bold'),plot.title = element_text(hjust = 0.5),plot.caption = element_text(hjust = 0.5))+
  scale_fill_brewer(palette = 'Dark2')+
  labs(title = 'Distribution of Flower Species',caption = 'Fig 1: Flower Species distribution pattern',x='Petal Length',y='Density',fill='Flower Species')


# Bar Plot

ggplot(data = iris,mapping = aes(x = Species,y = Petal.Length,fill=Species))+
  geom_col()


# Second Approach
ggplot(data = iris,mapping = aes(x = Species))+
  geom_bar()


#install.packages('gapminder')
library(gapminder)
data("gapminder")
View(gapminder)


gapminder %>% 
  group_by(country,year,continent) %>% 
  summarise(lifeExp=mean(lifeExp)) %>% 
  ggplot(aes(x = year,y = lifeExp))+
  geom_point()+
  facet_wrap(~continent)




# Scatter Plot
ggplot(gapminder,aes(x = pop,y = lifeExp))+
  geom_point()+
  facet_wrap(~continent)+
  scale_x_log10()

#install.packages(c('ggThemeAssist','esquisse'))

library(ggThemeAssist)
library
ggplot(gapminder) +
 aes(x = gdpPercap, y = pop,col=continent) +
 geom_point(shape = "circle",show.legend = FALSE) +
 scale_color_hue(direction = 1) +
 labs(x = "GDP per Capital", y = "Population", caption = "Pop by GDP perCap") +
 ggthemes::theme_base()+
  scale_x_log10()+
  scale_y_log10()+
  geom_smooth(method = 'lm',se=FALSE)+ theme(axis.text = element_text(family = "serif",
    size = 14, face = "bold", colour = "gray24"),
    legend.text = element_text(family = "serif"),
    legend.title = element_text(family = "serif"))


# Bar Plot
ggplot(data = iris,mapping = aes(x=Species,y = Sepal.Length,fill=Species))+
  stat_summary(geom = 'col',position = 'dodge',fun = 'mean')+
  stat_summary(fun.data = 'mean_se',geom = 'errorbar',position = position_dodge(.9),width=.2,size=0.9,col='black')+
  theme_classic()+
  coord_cartesian(expand = c(0,0))+
  scale_fill_brewer(palette = 'Set1')+
  theme(text = element_text(family = 'serif',face = 'bold'))+
  labs(y='Sepal Length')

