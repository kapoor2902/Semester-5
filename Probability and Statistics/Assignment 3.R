#1
a <- pbinom(9, size=12, prob=1/6) - pbinom(6, size=12, prob=1/6)
print(a)

b <- dbinom(7, size=12, prob = 1/6) + dbinom(8, size=12, prob = 1/6) + dbinom(9, size=12, prob = 1/6)
print(b)
#2
a <- pnorm(84, mean = 72, sd = 15.2, lower.tail = FALSE)
print(a)

b <- 1 - pnorm(84, mean = 72, sd = 15.2)
print(b)
#3
a <- dpois(0, lambda = 5)
print(a)

b <- ppois(50, lambda = 50) - ppois(47, lambda = 50)
print(b)

c <- ppois(0, lambda = 5)
print(c)
#4
a <- dhyper(3, m = 17, n = 233, k = 5)
print(a)
#5
x <- c(0:31)
px <- dbinom(x, size = 31, prob = 0.447)
plot(x, px)

x <- c(0:31)
cx <- pbinom(x, size = 31, prob = 0.447)
plot(x, cx)

meanx <- sum(x*px)
varx <- sum((x-meanx)^2 * px)
sdx <- sqrt(varx)

print(meanx)
print(varx)
print(sdx)