#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
#----------------------------------------------------------------------
#-----------------------------------------------------------------
#Bibliotecas
#-----------------------------------------------------------------

# Install and load the required package
install.packages("e1071")
library(e1071)

# Create a sample dataset
data(iris)  # Load the iris dataset
df <- iris  # Assign it to a new variable

# Split the dataset into training and testing sets
set.seed(123)  # Set a seed for reproducibility
train_indices <- sample(1:nrow(df), 0.7 * nrow(df))  # 70% for training
train_set <- df[train_indices, ]  # Training set
test_set <- df[-train_indices, ]  # Testing set

# Train the SVM model
svm_model <- svm(Species ~ ., data = train_set, kernel = "linear")

# Make predictions on the testing set
predictions <- predict(svm_model, test_set)

# Evaluate the model
confusion_matrix <- table(predictions, test_set$Species)
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
print(confusion_matrix)
cat("Accuracy:", accuracy)
