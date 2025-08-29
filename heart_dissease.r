#step 1: Install ggplot2 (only run once)
install.packages("ggplot2")

# step 2: Load ggplot2
library(ggplot2)

# step 3: Load your dataset
df <- read.csv("C:/Users/jasmine/Downloads/heart disease.csv")

# step 4: Label chest pain types for clarity
df$cp <- factor(df$cp,
                levels = c(1, 2, 3, 4),
                labels = c("Typical Angina", "Atypical Angina", "Non-anginal Pain", "Asymptomatic"))

# step 5: Create the bar chart
ggplot(df, aes(x = cp)) +
  geom_bar(fill = "orchid1") +
  labs(title = "Chest Pain Type Distribution",
       x = "Chest Pain Type",
       y = "Count") +
  theme_minimal()
