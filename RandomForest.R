library(randomForest)
random_forest_sonar <- randomForest(X,y,ntree =9999)

library(mlbench)
data(Sonar)
#First, we will plot which tracks out of- bag error for an increasing sequence of B values as below.
plot(random_forest_sonar$err.rate[,1], type = "l")

#We Use the R package randomForest to fit the random forests.

library(mlbench)
data(Sonar)
dim(Sonar)
levels(Sonar$Class)
head(Sonar)
X  <-  log(Sonar[,1:60] + 1) # predictors
y  <-  Sonar$Class


 ################
library(randomForest)
random_forest_sonar <- randomForest(X,y,ntree =9999)
plot(random_forest_sonar$err.rate[,1], type = "l")


#Check where does the error rate stabilize (after approximately around 4800 point.)
cv_error <- array()
 for( i in 1:208)
   {
       random_forest_cv <- randomForest(X[-i,],y[-i],ntree = 4800)
       cv_error[i] <- 1-as.numeric(predict(random_forest_cv,X[i,])==y[i])
     }
 
   
   mean(cv_error)



 for( i in 1:208)
   {
       random_forest_cv <- randomForest(X[-i,],y[-i],ntree = 4800)
       cv_error[i] <- 1-as.numeric(predict(random_forest_cv,X[i,])==y[i])
     }

 mean(cv_error)


 library(rpart)
 classification_accuracy_table <- matrix(0,nrow = 100,ncol = 2)
 for(i in 1:100)
   {
       set <- sample(1:length(y), 158)
       training <- cbind(y[set],X[set,])
       colnames(training)[1]<-"y"
       trees <- rpart(y~., data = training)
       pruned_trees <- prune(trees,cp=trees$cptable[which.min(trees$cptable[,4]),1])
       classification_accuracy_table[i,1] <- mean(predict(pruned_trees,X[-set,],type="class")==y[-set])
       random_forest_sonar_split <- randomForest(X[set,],y[set])
       classification_accuracy_table[i,2] <- mean(predict(random_forest_sonar_split,X[-set,])==y[-set])
       colnames(classification_accuracy_table) <- c("trees", "RandomForest")
     }
 classification_accuracy_table



