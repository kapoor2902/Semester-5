x &lt;- c(0,1,2,3,4)
px &lt;- c(0.41,0.37,0.16,0.05,0.01)
sum(x*px)
weighted.mean(x,px)
c(x%*%px)

func &lt;-function(t){t*0.1*exp(-0.1*t)}
mean &lt;- integrate(func,lower = 0,upper = Inf)
print(mean$value)

x &lt;- c(0,1,2,3)
px &lt;- c(0.1,0.2,0.2,0.5)
mean &lt;- sum((10*x-12)*px)
print(mean)

func1 &lt;- function(x){x*0.5*exp(-1*abs(x))}

func2 &lt;- function(x){x*x*0.5*exp(-1*abs(x))}
func3 &lt;- function(M1,M2){return(M2-M1*M1)}
moment1 &lt;- integrate(func1,lower=1,upper=10)
moment2 &lt;- integrate(func2,lower=1,upper=10)
variance &lt;- func3(moment1$value,moment2$value)
print(moment1$value)
print(variance)

func &lt;- function(x){return(3/4*(1/4)^(x-1))}
X &lt;- c(1,2,3,4,5)
e1 &lt;- sum(X^2*func(X))
e2 &lt;- sum(X^4*func(X))
variance &lt;- e2-e1^2
mean &lt;- e1
print(func(9))
print(mean)
print(variance)