library("MASS")
library("heavy")

spots = 841
types = 10 
M.sim <- matrix(rtgamma(spots*types, shape = 10, truncation = 20), nrow = types, ncol = spots)
write.matrix(M.sim, file="thetas_sim_1.csv") 
M.prior <- matrix(rtgamma(spots*types, shape = 10, truncation = 20), nrow = types, ncol = spots)
write.matrix(M.prior, file="thetas_prior_1.csv") 
