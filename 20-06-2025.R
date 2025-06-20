#matrices 

?matrix


#data size can be smaller than the matrix size but the matrix size must never be smaller than the data size

my_matrix <- matrix(1:5, nrow=4, ncol=5)
my_matrix
View(my_matrix)

nrow(my_matrix)
ncol(my_matrix)
?names
?colnames
colnames(my_matrix) <- c("a", "b", "c", "d", "e") 


View(my_matrix[c(1:4), c(1:2)])


my_matrix <- rbind(my_matrix, c(20,30,45,50,100))
my_matrix

NA

# assuming that the provided data contains gaps or empty spaces, it is possible/advised to replace them with the mean
my_matrix[5,5] <- NA
my_matrix
test_df <- data.frame(my_matrix)
print(test_df$e) # access by column name
?mean
my_mean <- mean(my_matrix[,5], na.rm=TRUE) # find the mean of data while ignoring gaps or nulls or not available

my_mean


# check if data contains NA or na
is.na(test_df$e)


# replace NA



replace_na <- function (mtx) { # create a simple function that receives data, matrix
  for (i in nrow(mtx)) { # loop to iterate through the rows
    for (j in ncol(mtx)){ # loop to iterate through the cols
      # calculate the mean
      mtx_mean <- mean(mtx[,j], na.rm=TRUE)  # find the mean of data while ignoring gaps or nulls or not available
      if (is.na(mtx[i,j])){
        mtx[i,j] <- mtx_mean # assign mean to NA
      }
    }
  }
  return(mtx) # return the updated matrix
}

my_matrix <- replace_na(my_matrix) # reassign the matrix







# real project



# data wrangling and clean

getwd()
setwd("/Users/aaeon/Desktop/Okanome_and_Femi")
df_comp <- read.csv("test_data.csv", header=TRUE, sep=",")

View(df_comp)

sum(is.na(df_comp))




# clean data figures 


# replace Ms for total funding
for (i in df_comp$TotalFunding) {
  df_comp$TotalFunding[match(i, df_comp$TotalFunding)] <- gsub("M", "", i)
}


# replace Bs for total funding

for (i in df_comp$TotalFunding) {
  df_comp$TotalFunding[match(i, df_comp$TotalFunding)] <- gsub("B", "", i)
}

# replace Ks for total funding

for (i in df_comp$TotalFunding) {
  df_comp$TotalFunding[match(i, df_comp$TotalFunding)] <- gsub("K", "", i)
}


# replace NAs for  total funding with 0

df_comp$TotalFunding[which(is.na(df_comp$TotalFunding))] <- "0"


# replace Bs for valuation

for (i in df_comp$Valuation) {
  df_comp$Valuation[match(i, df_comp$Valuation)] <- gsub("B", "", i)
}


for (i in df_comp$Valuation) {
  df_comp$Valuation[match(i, df_comp$Valuation)] <- gsub("(Cisco)", "", i)
}


# replace Ms for  ARR
for (i in df_comp$ARR) {
  df_comp$ARR[match(i, df_comp$ARR)] <- gsub("M", "", i)
}


# replace Bs for  ARR

for (i in df_comp$ARR) {
  df_comp$ARR[match(i, df_comp$ARR)] <- gsub("B", "", i)
}



View(df_comp)  
?typeof  
temp_vect <- c()
length(temp_vect)

as.numeric("10")

# check the type of the data values
is.double(df_comp$TotalFunding)

print(df_comp$TotalFunding)
mean(as.numeric(df_comp$TotalFunding), na.rm = TRUE)
summary(as.numeric(df_comp$TotalFunding))
sd(as.numeric(df_comp$TotalFunding)) 
?hist
hist(as.numeric(df_comp$TotalFunding), xlab="total funding", ylab = "occurrence", main="Okanome")
?str






#matrices 