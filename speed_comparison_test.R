n=3000
p=18

# We are going to compare the methods making matrix.
# The first method is by using 'rbind' and the other is by inserting elements
algo_rbind<-function(n=n, p=p){
A<-NULL;
for( i in 1:n){
	A <- rbind(A,rnorm(p))
}
return(A)
}

algo_mat<-function(n=n, p=p){
A = matrix(0, nr=n, nc=p)
for( i in 1:n){
	A[i,] <- rnorm(p)
}
return(A)
}

# It looks good
algo_rbind(n, p)
algo_mat(n, p)

# time comparison test
library(rbenchmark)
benchmark(replications=10, algo_rbind(n, p), algo_mat(n, p))
