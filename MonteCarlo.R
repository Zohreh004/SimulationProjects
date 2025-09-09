g <- function(x) {
  sqrt(1 - x^2)
}

u1 <- runif(100)
u2 <- runif(1000)
u3 <- runif(10000)
u4 <- runif(100000)

I_real <- pi / 4

Ihat1 <- mean(g(u1))
Ihat1
abs(I_real - Ihat1)

Ihat2 <- mean(g(u2))
Ihat2
abs(I_real - Ihat2)

Ihat3 <- mean(g(u3))
Ihat3
abs(I_real - Ihat3)

Ihat4 <- mean(g(u4))
Ihat4
abs(I_real - Ihat4)

set.seed(1234)
U <- runif(10^6)
K <- seq(100, 10^6, 100)
er <- numeric(length(K))

for (i in 1:length(K)) {
  ui <- g(U[1:K[i]])
  er[i] <- abs(I_real - mean(ui))
}

par(mfrow=c(1,2))
plot(K[1:1000], er[1:1000], type='l', ylim=c(0, 0.009), xlab="Samples (10^5)")
abline(h=0, lty=2)

plot(K, er, type='l', ylim=c(0, 0.009), xlab="Samples (10^6)")
abline(h=0, lty=2)
