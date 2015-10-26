library(dplyr)
library(tidyr)

df <- read.csv("./data/data.txt", sep = ";", colClasses = c("integer", "integer", "character"))
df$Date <- strptime(df$Fecha_NIKO, format = "%d%b%y")
df$Mes <- substr(df$Fecha_NIKO, 3, 5)
saveRDS(df, file = "./data/df.RDS")
