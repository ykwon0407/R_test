nlist=c(1,2,5)

# Data generation
x <- seq(-5, 5, 0.05)
y <- matrix(0, nr=length(x), nc=length(nlist))

plot(x, type="n", xlab="", ylab="", xlim=c(-5,5), ylim=c(0, 0.45))
for( i in 1:length(nlist)){
	y[,i] <- dt(x, df=nlist[i])
	lines(x, y[,i], col=nlist[i], lwd=2)
}
lines(x, dnorm(x), col=4, lwd=2)

legend_text <- c(expression(paste(nu,"=1")),
			expression(paste(nu,"=2")),
			expression(paste(nu,"=5")),
			expression(paste(nu,"=",infinity)))

legend("topright", legend=legend_text, lty=1, lwd=2, col=c(nlist,4))

