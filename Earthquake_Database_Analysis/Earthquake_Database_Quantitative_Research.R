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
