plt2 <- plt + geom_point(aes(color=Region),  size=4.3, shape=1) + 
  geom_smooth(method = 'lm', formula = y ~ log(x), se= FALSE, color='red') + 
  scale_x_continuous(name = "Corruption Perceptions Index, 2011 (10=least corrupt)", limits = c(.9, 10.5), breaks=1:10) + 
  scale_y_continuous(name = "Human Development Index, 2011 (1=Best)", limits = c(0.2, 1.0)) +
  geom_text(aes(label=Country), color='gray', data = subset(df, Country %in% label.points), 
            check_overlap = TRUE, alpha=1) +
    theme_bw() + theme(plot.title = element_text(hjust=0.5)) + 
  ggtitle("Corruption and Human Development")



label.points <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore", "Syria")

                 