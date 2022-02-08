# Random-Forest
Tuning Random Forests, comparing their classification accuracy to Regression Trees.

 - We Implement a simulated accuracy matrix with a dimension of 100 x 2. This accuracy matrix
in each of 2 columns will represent the corresponding method used (random forests , Regression Trees) and by averaging through the 100 repetitions (rows) for each of the two methods we will obtain the average accuracy for each of the two methods and compare.
  


     
 # Data  
    - Sonar Dataset. To generate in R Code we use : library(mlbench) and data(Sonar)
     
 # Code implementation.

  Tuning random forests :

  -  R package randomForest (fits the random forests)

 -  As the number of trees (B) used to construct the random forest tends To approach  ∞, the out-of-bag error estimate for a random forest approaches its n-fold cross-validation error estimate. In the limit, this identity is exact.
We will choose 9999 as (B) the number of trees.

 - Plot which tracks out of- bag error for an increasing sequence of B values as below.

 - Then, once the out-of-bag error has stabilized, we will perform leave-one-out cross-validation using a randomForest based on B^* the number of trees 
  at which we believe the out-of-bag-error has stabilized; in our case... we choose 4800. 
Comparing the out-of-bag error rate for random forest with B= 9999  trees) (∞)and error rate by leave 1-out CV with 4800 trees, we verify  that in the limit the mentioned statement is correct.

 - We will Compare regression trees and a random forest. For the regression trees, we use the cost-complexity approach 

 - From the plot we will check when does the error rate stabilize (after approximately around 4800 point).

 - We choose the tuning parameter using cross-validation. For the random forest, we will use default settings.



 # Conlusion
  In this example , random forest seems to be a better choice compared to regression trees.
