library("MASS")
library("heavy")
library("glue")

spots = 841
types = 10 

beta = 7
for (i in c(1:15))
{
  M.sim <- matrix(rtgamma(spots*types, shape = beta, truncation = 20), nrow = spots, ncol = types)
  write.matrix(M.sim, file=glue("data_{beta}/thetas_sim_{i}.csv"), sep = ",") 
  M.prior <- matrix(rtgamma(spots*types, shape = beta, truncation = 20), nrow = spots, ncol = types)
  write.matrix(M.prior, file=glue("data_{beta}/thetas_prior_{i}.csv"), sep = ",") 
}
