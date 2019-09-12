
library(tidyverse)
dataurl<-"https://raw.githubusercontent.com/AdamWilsonLab/SpatialDataScience/master/docs/02_assets/buffaloweather.csv"
temp<-read_csv(dataurl, skip=1, na="999.90", col_names=c("YEAR", "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC", "DJF", "MAM", "JJA", "SON", "metANN"))
plot1<-ggplot(data=temp) +
  geom_line(mapping=aes(x=YEAR, y=JJA))+
  geom_smooth(mapping=aes(x=YEAR, y=JJA), col="red")+
  xlab("Year")+
  ylab("Mean Summer Temperature (C)")+
  ggtitle("Mean Summer Temperatures in Buffalo, New York (1880-2018 
  Summer includes June, July, and August
  Data from the Global Historical Climate Network
  Red line is a LOESS smooth")
plot1
png(file="climate_cooling_lab.png")
plot1
dev.off()
pdf(file="climate_cooling_lab.pdf")
plot1
dev.off()
