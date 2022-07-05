
args = commandArgs(trailingOnly=TRUE)
print(args[1])

#Importing the dataset
dataset = read.csv(args[1])
print(dataset)

#Visualizing the Linear Regression results without it fit to a model
library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'green') +
  ggtitle('Regrex1 values') +
  xlab('X Values in regrex1.csv') +
  ylab('Y Values in regrex1.csv')
ggsave("r_orig.png")

# Fitting Linear Regression to the Dataset
model = lm(formula = y ~ x,
               data = dataset)
#Visualizing the Linear Regression results
library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +
  geom_line(aes(x = dataset$x, y = predict(model, newdata = dataset)),
            colour = 'blue') +
  ggtitle('Modeled values from regrex1.csv') +
  xlab('X Values in regrex1.csv') +
  ylab('Y Values in regrex1.csv')
ggsave("r_lm.png")


