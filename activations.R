sigmoid <- function(x){
  return (1 / (1 + exp(-x)))
}

relu <- function(x){
 return (x*(x>=0))
}

leaky_relu <- function(x){
  return (x*(x>=0) + 0.1*x*(x<=0))
}

bdd_relu <- function(x, q=1.4){
  return (x*(x>=0 & x<=q)/q + (x>=q))
}

bdd_leaky_relu <- function(x, q=1.4){
  return (x*(x>=0 & x<=q)/q + (x>=q) + 0.1*x*(x<=0))
}


lwd = 5
plot(sigmoid, -3, 3, col='black', bty='n',ylim=c(-1.5, 1.5), lwd=lwd, ylab='Output', xlab='Input', main='Activation functions', lty=1)
abline(h=0)
abline(v=0)
plot(tanh, -3, 3, add=TRUE, col='red', lwd=lwd, lty=2)
plot(relu, -3, 3, add=TRUE, col='blue', lwd=lwd, lty=1)
plot(leaky_relu, -3, 3, add=TRUE, col='green', lwd=lwd, lty=2)
plot(bdd_relu, -3, 3, add=TRUE, col='cyan', lwd=lwd, lty=3)
plot(bdd_leaky_relu, -3, 3, add=TRUE, col= 14, lwd=lwd, lty=3)
#points()

points(x = 1.4, y = par("usr")[3], pch = 3, las = 1, xpd = TRUE)

text(1.45, par("usr")[3]-0.14 , labels = expression(1/c^(l)), pos = 1, xpd = TRUE)
mtext(c("Low","High"),side=1,line=2,at=c(5,7))
legend('topleft', col = c('black','red','blue','green','cyan', 14), legend = c('sigmoid','tanh', 'relu','leaky relu','proposed I','proposed II'), lwd=3, lty=c(1,2,1,2,3,3) )





