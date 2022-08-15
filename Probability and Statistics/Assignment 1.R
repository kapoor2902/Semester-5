#question 1
c = c(5,10,15,20,25,30)
print (c)
max(c)
min(c)

#question 2
a = as.integer(readline("Enter number"))
  y=1
  for(i in 1:a)
  {
    y = y*i
  }
  print(y)



#question 3
x = as.integer(readline("Enter number"))
if(x<0)
{
  print("Number must not be -ve")
}else{
    a=0  
    b=1
    for(i in 1:x) 
    { 
      print(a)
      print(b)
      c=b
      b=a+b
      a=c
    }
}


#question 4

add <- function(x, y) {
  return(x + y)
}
subtract <- function(x, y) {
  return(x - y)
}
multiply <- function(x, y) {
  return(x * y)
}
divide <- function(x, y) {
  return(x / y)
}
  
  print("Select operation.")
  print("1.Add")
  print("2.Subtract")
  print("3.Multiply")
  print("4.Divide")
  choice = as.integer(readline(prompt="Enter choice[1/2/3/4]: "))
  num1 = as.integer(readline(prompt="Enter first number: "))
  num2 = as.integer(readline(prompt="Enter second number: "))
  operator <- switch(choice,"+","-","*","/")
  result <- switch(choice, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2))
  print(paste(num1, operator, num2, "=", result))
  
  
  


  
  
  #question 5
  plot(1,3)
  plot(c(1,3), c(5,6))
  plot(1 : 10)
  x = c(1, 2, 3, 4, 5)
  y = c(3,7,8,9,12)
  plot(x,y,type="l")
  x1 = c(5,7,8,7,22,9,4,11,12,9,6)
  y1 = c(99,86,87,111,102,87,94,78,77,85,86)
  x2 = c(2,2,8,1,15,8,12,9,7,3,11,4,7)
  y2 = c(100,106,84,90,99,90,95,94,100,79,112,91,44)
  plot(x1,y1,main="Observation of Cars",xlab="Car Age",ylab="Car Speed",col = "red");
  points(x2,y2,col="Blue")