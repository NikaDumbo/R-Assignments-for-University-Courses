# Database: all_month.csv

# Get data frame from csv file
csv_path = "C:/Users/Dumbo/Desktop/R/Earthquake_Database_Analysis/all_month.csv"
data <- read.csv(csv_path)

# Make quantitative research for magnitude column
mag <- na.omit(data$mag) # get magnitude data, exclude NA

paste("Min Value: ", min(mag))
paste("Max Value: ", max(mag))
paste("Sum Value: ", sum(mag))
paste("Count Value: ", length(mag))
paste("Mean Value: ", mean(mag))
paste("Standart Deviation Value: ", sd(mag))
paste("Variance Value: ", var(mag))
paste("Median Value: ", median(mag))

# Get only February data
# In this case, we have data for February and March 2023
febData = subset(data, as.Date(data$time) < as.Date("2023-03-01"))
magf <- na.omit(febData$mag) # get magnitude data, exclude NA

# Quantitative research for February data
paste("Min Value: ", min(magf))
paste("Max Value: ", max(magf))
paste("Sum Value: ", sum(magf))
paste("Count Value: ", length(magf))
paste("Mean Value: ", mean(magf))
paste("Standart Deviation Value: ", sd(magf))
paste("Variance Value: ", var(magf))
paste("Median Value: ", median(magf))