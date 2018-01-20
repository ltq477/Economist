# Set Working Directory
setwd("/Users/Ence477/OneDrive/DataScience/Projects/Economist/")

#Call Libraries
library(ggplot2)

#Get dataset and assign to Data Frame
df <- read.csv('Economist_Data.csv')

#get Dataframe Structure (173 obs and 6 features)
str(df)

#create ggplot Data
plt <- ggplot(df, aes(CPI, HDI))

#Add geom_point
plt + geom_point(aes(color=Region),  size=4.3, shape='O') + 
  #Add Trend Line
  geom_smooth(method = 'lm', formula = y ~ log(x), se= FALSE, color='red') + 
  #Add Scale and label to x axis
  scale_x_continuous(name = "Corruption Perceptions Index, 2011 (10=least corrupt)", limits = c(.9, 10.5), breaks=1:10) + 
  #Add Scale and label to y axis
  scale_y_continuous(name = "Human Development Index, 2011 (1=Best)", limits = c(0.2, 1.0)) +
  #Label points for specific countries
  geom_text(aes(label=Country), color='gray', data = subset(df, Country %in% label.points), 
            check_overlap = TRUE, alpha=1) +
  #Add title
  ggtitle("Corruption and Human Development") +
  #add theme and center title
  theme_bw() + theme(plot.title = element_text(hjust=0.5)) 

#Label Points to show on chart
label.points <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                  "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                  "India", "Italy", "China", "South Africa", "Spane",
                  "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                  "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                  "New Zealand", "Singapore", "Syria")

