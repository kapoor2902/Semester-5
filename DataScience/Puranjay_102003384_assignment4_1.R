#Puranjay Singh
#102003384
#3CO9
#Assignment 4.1

#Ques 1
PatientID <- c(1,2,3,4)
AdmDate <- c("10/15/2009","11/01/2009","10/21/2009","10/28/2009")
Age <- c(25,34,28,52)
Diabetes <- c("Type1","Type2","Type1","Type1")
Status <- c("Poor","Improved","Excellent","Poor")
Patient_dataset <- data.frame(PatientID,AdmDate,Age,Diabetes,Status)
print(Patient_dataset)

#Ques 2
#(a)
Patient_dataset[c(1,3)]
#(b)
Patient_dataset[Diabetes=="Type1",]
#(c)
nrow(Patient_dataset[Status=="Poor",])
#(d)
summary(Patient_dataset)
#(e)
mean(Patient_dataset$Age)
#(f)
new_pid <- as.integer(readline(prompt = "Enter Patient ID: "))
new_date <- as.character(readline(prompt = "Enter Admission date: "))
new_age <- as.integer(readline(prompt = "Enter Patient age: "))
new_d <- as.character(readline(prompt = "Enter Diabetes type: "))
new_status <- as.character(readline(prompt = "Enter Patient status: "))
new_row <- c(new_pid,new_date,new_age,new_d,new_status)
Patient_dataset <- rbind(Patient_dataset,new_row)
print(Patient_dataset)

#Ques 3
t <- "My first list"
a <- c(12,14,16,20)
m <- matrix(1:10,nrow=5)
s <- c("First","Second","Third")
my_list <- list(title=t,"Age"=a,"Matrix"=m,"Score"=s)

print(my_list) #List contents
print(names(my_list)) #Criteria contents
print(a) #Age vector