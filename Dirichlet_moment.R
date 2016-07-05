nlist=c(10^1,10^2,10^3,10^4,10^5,10^6)

for( n in nlist){
X=rgamma(n, shape = 1)
W=X/sum(X)
res1 = W[1]-1/n
res2 = sum((W-1/n)^2)
print(c(res1, res2))
}

M=10^6
Y=Z=Q1=Q2=rep(0,M)
for(n in 10^5:M){
  X=rgamma(n, shape = 1)
  W=X/sum(X)
  Y[n] = W[1]-1/n
  Z[n] = sum((W-1/n)^2)
  Q1[n] = mean(n*W)
  Q2[n] = mean((n*W)^2)
}


plot(1:M, Z, ylim=c(0,5))
points(1:M, Y, col='red')
points(1:M, Q1, col='blue')
points(1:M, Q2, col='yellow')





