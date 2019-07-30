install.packages("ISLR")
library(ISLR)
View(Auto)

head(Auto, n=10)

install.packages("corrplot")
library(corrplot)
data(Auto)
str(Auto)

#create data frame removing 'name' column

quesb <- subset(Auto, select = -c (name))
matrix  <- cor(quesb)                          
corrplot(matrix,type="upper",order="hclust")
#dark blue <- strong positive
#dark red <- strong negative 

---------------

require("corrplot")

#find correlation value
res <- cor(quesb)
round(res, 2)

#rcorr(new_data_frame, type = c("pearson","spearman"))
install.packages("Hmisc")
library('Hmisc')
res2 <- rcorr(as.matrix(quesb))
res2
cormat <- res2$r
pmat <- res2$P

-------------
  flattenCorrMatrix <- function(cormat, pmat) {
    ut <- upper.tri(cormat)
    data.frame(
      row = rownames(cormat)[row(cormat)[ut]],
      column = rownames(cormat)[col(cormat)[ut]],
      cor  =(cormat)[ut],
      p = pmat[ut]
    )
  }

res3<-rcorr(as.matrix(quesb[,1:8]))
flattenCorrMatrix(res3$r, res3$P)

  ------------
  --------------------
  
  #linear regression model

quesb <- subset(Auto, select = -c (name))
lm_model <- lm(mpg ~ ., data=quesb)
lm_model
summary(lm_model)$coefficients
plot(lm_model)

-----------------------------------

#when you take square
quesc <- subset(Auto, select = -c (mpg))
square_value <- (quesc)^2
View(square_value)
quese_2 <- data.frame(square_value)
quese_2 <- cbind(mpg=quesb,square_value)
View(quese_2)

lm_modele <- lm(mpg ~ ., data=quese_2)
lm_modele
summary(lm_modele)$coefficients
plot(lm_model_e)

----------------------------------

  
#when you take square root
squareroot_value <- sqrt(quesb)
View(squareroot_value)
quese_3 <- data.frame(squareroot_value)
quese_3 <- cbind(mpg=squareroot_value,squareroot_value)
View(quese_3)

lm_model_sq <- lm(mpg ~ ., data=quese_3)
lm_model_sq
summary(lm_model_sq)$coefficients
plot(lm_model_sq)



#when you take log
log_value <- log(quesb)
View(log_value)
quese_1 <- data.frame(log_value)
quese_1 <- cbind(mpg=log_value,log_value)
View(quese_1)

lm_model_sq <- lm(mpg ~ ., data=quese_1)
lm_model_sq
summary(lm_model_sq)$coefficients
plot(lm_model_sq)

  