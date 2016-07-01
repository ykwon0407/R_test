nlist=c(10^1,10^2,10^3,10^4, 10^5, 10^6, 10^7, 10^8)

for( n in nlist){
X=rgamma(n, shape = 1)
W=X/sum(X)
res1 = W[1]-1/n
res2 = sum((W-1/n)^2)
print(c(res1, res2))
}

M=10^3
Y=Z=rep(0,M)
for( n in 1:M){
  X=rgamma(n, shape = 1)
  W=X/sum(X)
  Y[n] = W[1]-1/n
  Z[n] = sum((W-1/n)^2)
}


plot(1:M, Z)
points(1:M, Y, col='red')
