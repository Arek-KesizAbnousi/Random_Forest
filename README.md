# Random-Forest
Tuning Random Forests, comparing their classification accuracy to Regression Trees.

 - We Implement a simulated accuracy matrix with a dimension of 100 x 2. This accuracy matrix
in each of the two columns will represent the corresponding method used (random forests, Regression Trees). By averaging through the 100 repetitions (rows) for each of the two approaches, we will obtain the average accuracy for each method and compare.
  


     
 # Data  
    - Sonar Dataset. To generate in R Code we use : library(mlbench) and data(Sonar)
     
 # Code implementation.

  Tuning random forests :

  -  R package randomForest (fits the random forests)

 -  As the number of trees (B) used to construct the random forest tends To approach  ∞, the out-of-bag error estimate for a random forest approaches its n-fold cross-validation error estimate. In the limit, this identity is exact.
We will choose 9999 as (B) the number of trees.

 - Plot which tracks out of- bag error for an increasing sequence of B values as below.

 - Then, once the out-of-bag error has stabilized, we will perform leave-one-out cross-validation using a randomForest based on B^* the number of trees 
  We believe the out-of-bag error has stabilized; in our case, we choose 4800. 
Comparing the out-of-bag error rate for the random forest with B= 9999  trees) (∞)and error rate by leaving 1-out CV with 4800 trees, we verify that the mentioned statement is correct in the limit.

 - We will Compare regression trees and a random forest. For the regression trees, we use the cost-complexity approach 

 - From the plot, we will check when the error rate stabilizes (after approximately around 4800 points).

 - We choose the tuning parameter using cross-validation. For the random forest, we will use default settings.



 # Conlusion
  In this example, the random forest seems to be a better choice than regression trees.


