## data skewness
## if the predictor distribution is roughly symmetric, then the skewness should be close to zero
## skewness statistic appears larger if right skewed
## skewness statistic appears smaller(negative) if left skewed

check_skew <- function(x){
  v = var(x)
  skewness = sum((x - mean(x))^3)/((length(x)-1)*v^(3/2))
  return(skewness)
}

## common solution is to do log, square root or inverse transformation
## but how? Box and Cox, MASS library, boxcox()

