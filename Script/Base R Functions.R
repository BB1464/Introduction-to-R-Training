# The ifelse statement is used to create a categorical variable in R

ifelse(iris$Species=='setosa',1,ifelse(iris$Species=='versicolor',2,3))

# The ifelse statement is used to create a categorical variable in R

# Example 1
iris$Spp <- ifelse(iris$Species=='setosa',1,ifelse(iris$Species=='versicolor',2,3))

# Example 2
mtcars$VS_mod <- ifelse(mtcars$vs==0,'High','Low')


mtcars$am_mod <- ifelse(mtcars$am==1,'Good','Bad')

mtcars$Gear_mod <- ifelse(mtcars$gear==3,'High',ifelse(mtcars$gear==4,'Medium','High'))


# Last Example
mtcars$carb_mod <- ifelse(mtcars$carb==1,'G1',ifelse(mtcars$carb==2,'G2',ifelse(mtcars$carb==3,'G3',ifelse(mtcars$carb==4,'G4',ifelse(mtcars$carb==6,'G5','G8')))))




# Assignment -----------------------------------------------------


Assingnment <- data.frame(Weather=c('Hot','Cold','Rainy'),Genotype=c('G1','G2','G3'),Plant_Height=c(40,20,60),Leaf_Area=c(10,15,22))

# Write an ifelse statement to convert the Weather and Genotype into numeric values.




