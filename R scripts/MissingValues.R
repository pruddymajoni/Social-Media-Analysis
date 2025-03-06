#missing observations and data set

# Load necessary libraries
install.packages("dplyr")
install.packages("mice")
install.packages("naniar")
library(dplyr)
library(mice)
library(naniar)

# Load dataset 
df <- read.csv("~/Documents/GitHub/Social-Media-Analysis/Data - Raw and Processed/2025 Social Media Interaction Data.csv")
View(df)

# 1. Identifying Missing Data
cat("Total Missing Values:", sum(is.na(df)), "\n")
print(colSums(is.na(df)))  # Missing values per column

# 2. Visualize missing values
gg_miss_var(df)  # Visualize missing values

# 3. Replace missing categorical values with mode
replace_mode <- function(x) {
  mode_value <- names(sort(table(x), decreasing=TRUE))[1]
  x[is.na(x)] <- mode_value
  return(x)
}
df <- df %>% mutate_if(is.character, replace_mode)

# 4. Advanced Imputation Using 'mice'
imputed_data <- mice(df, method="pmm", m=5)  # Predictive mean matching
df_complete <- complete(imputed_data)

# 5. Save the cleaned dataset
write.csv(df_complete, "cleaned_dataset.csv", row.names = FALSE)

cat("Missing data handled successfully!")
install.packages("writexl")  
library(writexl)

write_xlsx(df_complete, "cleaned_dataset.xlsx")
