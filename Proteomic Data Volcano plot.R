# Assuming you have a dataset with fold changes and p-values, you can create a volcano plot like this:

# Load necessary libraries
library(ggplot2)

# Sample data (replace with your own dataset)
# Example data with fold changes and p-values
data <- data.frame(
  FoldChange = c(-1.5, 2.0, 0.8, -0.7, 1.2),
  P_Value = c(0.0001, 0.02, 0.2, 0.001, 0.05),
  Gene = c("Gene1", "Gene2", "Gene3", "Gene4", "Gene5")
)

# Define significance threshold
significance_threshold <- 0.05

# Create volcano plot
volcano_plot <- ggplot(data, aes(x = FoldChange, y = -log10(P_Value))) +
  geom_point(aes(color = ifelse(P_Value < significance_threshold, "Significant", "Not Significant")), size = 3) +
  geom_hline(yintercept = -log10(significance_threshold), linetype = "dashed", color = "red") +
  labs(x = "Log2 Fold Change", y = "-Log10 p-value", title = "Volcano Plot") +
  theme_minimal() +
  theme(legend.position = "none")  # Remove legend

# Print volcano plot
print(volcano_plot)


# Assuming you have a dataset with fold changes, p-values, and gene names, you can create a volcano plot like this:

# Load necessary libraries
library(ggplot2)

# Sample data (replace with your own dataset)
# Example data with fold changes, p-values, and gene names
data <- data.frame(
  FoldChange = c(-1.5, 2.0, 0.8, -0.7, 1.2),
  P_Value = c(0.0001, 0.02, 0.2, 0.001, 0.05),
  Gene = c("Gene1", "Gene2", "Gene3", "Gene4", "Gene5")
)

# Define significance threshold
significance_threshold <- 0.05

# Create volcano plot
volcano_plot <- ggplot(data, aes(x = FoldChange, y = -log10(P_Value))) +
  geom_point(aes(color = ifelse(P_Value < significance_threshold, "Significant", "Not Significant")), size = 3) +
  geom_hline(yintercept = -log10(significance_threshold), linetype = "dashed", color = "red") +
  geom_text_repel(aes(label = Gene), size = 3, vjust = -0.5) +  # Add gene labels
  labs(x = "Log2 Fold Change", y = "-Log10 p-value", title = "Volcano Plot") +
  theme_minimal() +
  theme(legend.position = "none")  # Remove legend

# Print volcano plot
print(volcano_plot)


# Load necessary libraries
library(ggplot2)
library(dplyr)
library(tidyr)
library(readr)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Define significance threshold
significance_threshold <- 0.05

# Create volcano plot
volcano_plot <- ggplot(data, aes(x = log2FoldChange, y = -log10(p_value))) +
  geom_point(aes(color = ifelse(p_value < significance_threshold, "Significant", "Not Significant")), size = 3) +
  geom_hline(yintercept = -log10(significance_threshold), linetype = "dashed", color = "red") +
  geom_text_repel(aes(label = Gene), size = 3, vjust = -0.5) +  # Add gene labels
  labs(x = "Log2 Fold Change", y = "-Log10 p-value", title = "Volcano Plot") +
  theme_minimal() +
  theme(legend.position = "none")  # Remove legend

# Print volcano plot
print(volcano_plot)


# Load necessary libraries
library(ggplot2)
library(dplyr)
library(tidyr)
library(readr)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Reshape data for boxplot
data_long <- pivot_longer(data, cols = starts_with("System"), names_to = "System", values_to = "Value")

# Create boxplot
boxplot <- ggplot(data_long, aes(x = System, y = Value)) +
  geom_boxplot() +
  labs(x = "System", y = "Value", title = "Boxplot of Values Across Systems") +
  theme_minimal()

# Print boxplot
print(boxplot)


# Load necessary libraries
library(ggplot2)
library(dplyr)
library(tidyr)
library(readr)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Reshape data for boxplot
data_long <- pivot_longer(data, cols = -Gene, names_to = "System", values_to = "Value")

# Create boxplot
boxplot <- ggplot(data_long, aes(x = System, y = Value)) +
  geom_boxplot() +
  labs(x = "System", y = "Value", title = "Boxplot of Values Across Systems") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Print boxplot
print(boxplot)


# Load necessary libraries
library(ggplot2)
library(dplyr)
library(tidyr)
library(readr)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Reshape data for boxplot
data_long <- pivot_longer(data, cols = -Gene, names_to = "System", values_to = "Value")

# Create boxplot
boxplot <- ggplot(data_long, aes(x = System, y = Value)) +
  geom_boxplot() +
  labs(x = "System", y = "Value", title = "Boxplot of Values Across Systems") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Print boxplot
print(boxplot)


# Load necessary libraries
library(ggplot2)
library(tidyr)
library(readr)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Reshape data for boxplot
data_long <- tidyr::pivot_longer(data, cols = -Gene, names_to = "System", values_to = "Value")

# Create boxplot
boxplot <- ggplot(data_long, aes(x = System, y = Value)) +
  geom_boxplot() +
  labs(x = "System", y = "Value", title = "Boxplot of Values Across Systems") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Print boxplot
print(boxplot)


# Load necessary libraries
library(ggplot2)
library(tidyr)
library(readr)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Reshape data for boxplot
data_long <- pivot_longer(data, cols = -Gene, names_to = "System", values_to = "Value")

# Create boxplot
boxplot <- ggplot(data_long, aes(x = System, y = Value)) +
  geom_boxplot() +
  labs(x = "System", y = "Value", title = "Boxplot of Values Across Systems") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Print boxplot
print(boxplot)


# Load necessary libraries
library(ggplot2)
library(tidyr)
library(readr)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Reshape data for boxplot
data_long <- gather(data, key = "System", value = "Value", -Gene)

# Create boxplot
boxplot <- ggplot(data_long, aes(x = System, y = Value)) +
  geom_boxplot() +
  labs(x = "System", y = "Value", title = "Boxplot of Values Across Systems") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Print boxplot
print(boxplot)


# Load necessary libraries
library(ggplot2)
library(reshape2)
library(readr)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Reshape data for boxplot
data_long <- melt(data, id.vars = "Gene", variable.name = "System", value.name = "Value")

# Create boxplot
boxplot <- ggplot(data_long, aes(x = System, y = Value)) +
  geom_boxplot() +
  labs(x = "System", y = "Value", title = "Boxplot of Values Across Systems") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Print boxplot
print(boxplot)


# Load necessary libraries
library(ggplot2)
library(readr)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Reshape data for boxplot
data_long <- reshape(data, direction = "long", varying = list(names(data)[2:ncol(data)]), v.names = "Value", timevar = "System", times = names(data)[2:ncol(data)], idvar = "Gene")

# Create boxplot
boxplot <- ggplot(data_long, aes(x = System, y = Value)) +
  geom_boxplot() +
  labs(x = "System", y = "Value", title = "Boxplot of Values Across Systems") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Print boxplot
print(boxplot)


# Load necessary libraries
library(ggplot2)
library(readr)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Reshape data for boxplot
data_long <- reshape(data, 
                     varying = list(names(data)[2:ncol(data)]), 
                     v.names = "Value", 
                     times = names(data)[2:ncol(data)], 
                     timevar = "System", 
                     direction = "long")

# Create boxplot
boxplot <- ggplot(data_long, aes(x = System, y = Value)) +
  geom_boxplot() +
  labs(x = "System", y = "Value", title = "Boxplot of Values Across Systems") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Print boxplot
print(boxplot)


# Load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Display the structure of the dataset
str(data)

# Summary statistics of the dataset
summary(data)

# Visualize distribution of each variable
for (col in names(data)) {
  if (is.numeric(data[[col]])) {
    ggplot(data, aes(x = !!sym(col))) +
      geom_histogram() +
      labs(title = paste("Histogram of", col))
  } else {
    ggplot(data, aes(x = factor(!!sym(col)))) +
      geom_bar() +
      labs(title = paste("Bar plot of", col))
  }
}

# Perform other analyses as needed


# Load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Display the structure of the dataset
str(data)

# Summary statistics of the dataset
summary(data)

# Visualize distribution of each variable
for (col in names(data)) {
  if (is.numeric(data[[col]])) {
    print(ggplot(data, aes(x = !!sym(col))) +
            geom_histogram() +
            labs(title = paste("Histogram of", col)))
  } else {
    print(ggplot(data, aes(x = factor(!!sym(col)))) +
            geom_bar() +
            labs(title = paste("Bar plot of", col)))
  }
}


# Load necessary libraries
library(ggplot2)
library(readr)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Define significance threshold (adjust as needed)
significance_threshold <- 0.05

# Create volcano plot
volcano_plot <- ggplot(data, aes(x = log2FoldChange, y = -log10(p_value))) +
  geom_point(aes(color = ifelse(p_value < significance_threshold, "Significant", "Not Significant")), size = 3) +
  geom_hline(yintercept = -log10(significance_threshold), linetype = "dashed", color = "red") +
  labs(x = "Log2 Fold Change", y = "-Log10 p-value", title = "Volcano Plot") +
  theme_minimal() +
  theme(legend.position = "none")  # Remove legend

# Print volcano plot
print(volcano_plot)


# Load necessary libraries
library(readr)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Display the structure of the dataset
str(data)


# Load necessary libraries
library(ggplot2)
library(readr)

# Load dataset from URL
url <- "https://raw.githubusercontent.com/brennanpincardiff/RforBiochemists/master/data/mcp.M114.044479.csv"
data <- read.csv(url)

# Define significance threshold (adjust as needed)
significance_threshold <- 0.05

# Create volcano plot
volcano_plot <- ggplot(data, aes(x = Log2.Fold.Change, y = -log10(P.Value))) +
  geom_point(aes(color = ifelse(P.Value < significance_threshold, "Significant", "Not Significant")), size = 3) +
  geom_hline(yintercept = -log10(significance_threshold), linetype = "dashed", color = "red") +
  labs(x = "Log2 Fold Change", y = "-Log10 p-value", title = "Volcano Plot") +
  theme_minimal() +
  theme(legend.position = "none")  # Remove legend

# Print volcano plot
print(volcano_plot)



