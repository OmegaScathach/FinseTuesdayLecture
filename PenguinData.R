# Emperor Penguin - Average Weight and Height
# Example data for 10 penguins

# Note: These are simulated values, not real penguin measurements.

# 1. Create dataset
penguins <- data.frame(
  weight_kg = c(32, 38, 35, 40, 36, 34, 39, 37, 33, 41),
  height_cm = c(115, 120, 118, 123, 117, 112, 121, 119, 116, 124)
)

# 1.a Create a parallel dataset with random values
penguins1 <- data.frame(
  weight_kg = sample.int(45, 10),
  height_cm = sample.int(150, 10)
)

# 2. Calculate averages
avg_weight <- mean(penguins$weight_kg)
avg_height <- mean(penguins$height_cm)

# 2.a Calculate averages with random values
avg_weight1 <- mean(penguins1$weight_kg)
avg_height1 <- mean(penguins1$height_cm)

# 3. Create two plots side by side
par(mfrow = c(1, 2))

# Plot average weight
barplot(
  avg_weight,
  main = "Average Weight",
  ylab = "Weight (kg)",
  col = "steelblue",
  ylim = c(0, 50),
  names.arg = "Emperor Penguins"
)

# Plot average height
barplot(
  avg_height,
  main = "Average Height",
  ylab = "Height (cm)",
  col = "darkseagreen",
  ylim = c(0, 140),
  names.arg = "Emperor Penguins"
)

#3.a Plot average weight with random values
barplot(
  avg_weight1,
  main = "Average Weight random",
  ylab = "Weight (kg)",
  col = "steelblue",
  ylim = c(0, 50),
  names.arg = "Emperor Penguins"
)

# Plot average height with random values
barplot(
  avg_height1,
  main = "Average Height",
  ylab = "Height (cm)",
  col = "darkseagreen",
  ylim = c(0, 140),
  names.arg = "Emperor Penguins"
)
# 4. Reset plotting layout
par(mfrow = c(1, 1))

# 5. Print results
cat("Number of penguins:", nrow(penguins), "\n")
cat("Average weight:", avg_weight, "kg\n")
cat("Average height:", avg_height, "cm\n")
