## Exploratory Analysis.
## Read the dataset which is a text file and store in a variable called data


data <- read.table("C:\\Users\\Varun Manivannan\\datasciencecoursera-repo\\household_power_consumption.txt",header = TRUE,sep=";",stringsAsFactors = FALSE,dec = ".")

## Check the structure of the data frame
str(data)

## Reading the data only for dates starting from 1/2/2007 tO 2/2/2007

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]

## The plot is to be made for global active power the values of which are in characters.lets convert to numeric.

subSetData$Global_active_power <- as.numeric(x =subSetData$Global_active_power)

## Test if the variable is  converted.
str(subSetData)

## Lets strip the date into D M Y format.

DateTime <- strptime(paste(x = subSetData$Date,subSetData$Time,sep =" "),format = "%d/%m/%Y %H:%M:%S")

str(DateTime)

##plotting
png(filename = "plot2.png",width = 480,height = 480)
plot(x = DateTime,y = subSetData$Global_active_power,type = "l", xlab = "", ylab = "Global Active Power (kilowatts)" )
dev.off()