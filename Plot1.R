
## Exploratory Analysis.
## Read the dataset which is a text file and store in a variable called data


data <- read.table("C:\\Users\\Varun Manivannan\\datasciencecoursera-repo\\ExData_Plotting1\\household_power_consumption.txt",header = TRUE,sep=";",stringsAsFactors = FALSE,dec = ".")

## Check the structure of the data frame
str(data)

## Reading the data only for dates starting from 1/2/2007 tO 2/2/2007

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]

head(subSetData)
str(subSetData)

## The plot is to be made for global active power the values of which are in characters.lets convert to numeric.

subSetData$Global_active_power <- as.numeric(x =subSetData$Global_active_power)

## Test if the variable is  converted.
str(subSetData)

## Construct the plot and save it to PNG
png("plot1.png",width = 480,height = 480)
hist(subSetData$Global_active_power,col = "red",xlab = "Global Active Power (kilowatts)",main = "Global Active Power")
dev.off()