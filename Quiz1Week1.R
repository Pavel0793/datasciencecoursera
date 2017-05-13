Prorgramming answers on Quize Week1

> # 11 In the dataset provided for this Quiz, what are the column names of the dataset? 
 
> data<-read.csv('hw1_data.csv')
> names(data)
[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"    

> # 12 Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
  
> #way1
> head(data, n =2)
Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2

> #way2
  > data[1:2,]
Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2

> # 13 How many observations (i.e. rows) are in this data frame?
> nrow(data)
[1] 153

> # 14 Extract the last 2 rows of the data frame and print them to the console. What does the output look like?

> #way1
> tail(data, n = 2L)
Ozone Solar.R Wind Temp Month Day
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30
> #way2
> data[(nrow(data)-2):nrow(data),]
Ozone Solar.R Wind Temp Month Day
151    14     191 14.3   75     9  28
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30

> # 15 What is the value of Ozone in the 47th row?

> data[47,]
Ozone Solar.R Wind Temp Month Day
47    21     191 14.9   77     6  16

> # 16 How many missing values are in the Ozone column of this data frame?

> isna<-is.na(data$Ozone)
> sum(isna)
[1] 37

> # 17 What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
> #way1
> mean(data[,1], na.rm = TRUE)
[1] 42.12931

> #way2
> Ozone <- na.omit(data$Ozone)
> mean(Ozone)
[1] 42.12931

> # 18 Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?

> OzTesubset <- mean(subset(data, Ozone > 31 & Temp > 90)$Solar.R)
> OzTesubset
[1] 212.8

> # 19 What is the mean of "Temp" when "Month" is equal to 6

> Tempmean <- mean(subset(data, Month == 6)$Temp)
> Tempmean
[1] 79.1

> # 20 What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?

> Maxozone = max(subset(datalast, Month==5)$Ozone, na.rm = TRUE)
Error in subset(datalast, Month == 5) : object 'datalast' not found
> Maxozone = max(subset(data, Month==5)$Ozone, na.rm = TRUE)
> Maxozone
[1] 115