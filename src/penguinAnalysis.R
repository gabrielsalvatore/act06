# An analysis of penguins features in population

# Add Your Name Here


rm(list = ls()) # clear out the variables from memory to make a clean execution of the code.

# If you want to remove all previous plots and clear the console, run the following two lines.
graphics.off() # clear out all plots from previous work.

cat("\014") # clear the console

#library(tidyverse)
# A better way to code...
# Find out if the library is not already installed and\
# if not, install the library and then load it.

# Library for data manipulation and plotting
if(!require('tidyverse')) {
  install.packages('tidyverse')
  library('tidyverse')
}

# Library that contains the penguin dataset
if(!require('palmerpenguins')) {
  install.packages('palmerpenguins')
  library('palmerpenguins')
}

# Load the penguin dataset
data("penguins")

# Display the first few rows of the dataset
head(penguins)

# Check for missing values
summary(penguins)

# get a general plot of the data
# Complete the code below to create a plot.

TODO(penguins, aes(x = bill_length_mm, y = flipper_length_mm)) +
  geom_point(aes(color = species)) +
  labs(title = "Bill Length vs Flipper Length", x = "Bill Length (mm)", y = "Flipper Length (mm)")

# Calculate the correlation matrix
correlation_matrix <- cor(penguins %>% select(bill_length_mm, flipper_length_mm, body_mass_g), use = "complete.obs")
print(correlation_matrix)

# Linear regression model

# Complete the code below to create a linear model.
model <- TODO(flipper_length_mm ~ bill_length_mm, data = penguins)

# Summary of the model
summary(model)

# Plot the data with the linear regression line
# Complete the code below to create a plot.

TODO(penguins, aes(x = bill_length_mm, y = flipper_length_mm)) +
  geom_point(aes(color = species)) +
  geom_smooth(method = "lm", col = "blue", se = FALSE) +
  labs(title = "Linear Regression: Bill Length vs Flipper Length",
       x = "Bill Length (mm)", y = "Flipper Length (mm)")

