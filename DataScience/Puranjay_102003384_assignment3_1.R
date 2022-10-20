#Puranjay Singh
#102003384
#3CO9
#Assignment 3.1

#Ques 1
A <- (12:16)
print(A)
#Ques 2
print(sum(A))
#Ques 3
print(prod(A))
#Ques 4
print(max(A))
print(min(A))
#Ques 5
print(range(A))
#Ques 6
print(mean(A))
print(sd(A))
print(var(A))
print(median(A))
#Ques 7
B <- sort(A)
C <- sort(A,decreasing = TRUE)
print(B)
print(C)
#Ques 8
M <- matrix(1:12,nrow=3,ncol=4)
print(M)
#Ques 9
RW <- matrix(c(A,B,C),nrow=5,ncol=3)
print(RW)
CW <- matrix(c(A,B,C),nrow=3,ncol=5,byrow = TRUE)
print(CW)
#Ques 10
print(RW[2:3,])
#Ques 11
print(CW[,c(1,4)])
#Ques 12
sub_mat <- matrix(c(RW[2,3],CW[2,4]))
print(sub_mat)
