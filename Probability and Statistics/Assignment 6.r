#q2

f<-function(x,y){
  return ((x+y)/30)
}

f1<-function(x,y){
  return (x*y*(x+y)/30)
}

m<-matrix(c(f(0,0:2),f(1,0:2),f(2,0:2),f(3,0:2)),nrow=4,ncol=3,byrow = T)
print(m)

if(sum(m)==1){
  print("joint pmf")
}else{
  print("not joint pmf")
}

print(sum(m))

gx=apply(m,1,sum)
hy=apply(m,2,sum)

print((m[1,2]/hy[2]))

ex=sum(0:3*gx)
ex

ey=sum(0:2*fy)
ey

x=c(0:3)
y=c(0:2)
m1<-matrix(c(f1(0,0:2),f1(1,0:2),f1(2,0:2),f1(3,0:2)),nrow=4,ncol=3,byrow = T)
m1
exy=sum(m1)
exy

vx=sum(x*x*gx)-(ex)*(ex)
vx
vy=sum(y*y*hy)-ey*ey
vy

vxy=exy-ex*ey
vxy

corr=vxy/((vx*vy)^0.5)
corr

#q1
f2<-function(x,y){
  return (2*(2*x+3*y)/5)
}

#install.packages("pracma")
#library("pracma")

integral2(f2,xmin=0,xmax=1,ymin=0,ymax=1)

fy=function(y){f2(1,y)}
print(yx)

gx1=integrate(fy,0,1)
gx1

fx=function(x){f2(x,0)}

hy1=integrate(fx,0,1)
hy1

f3=function(xx,yy){return (xx*yy*f2(xx,yy))}

exy2=integral2(f3,xmin=0,xmax=1,ymin=0,ymax=1)
exy2