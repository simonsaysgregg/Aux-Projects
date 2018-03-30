## Analysis of Organic Matter refuse 3/23/17 - 5/30/17
### Hash Key:
### - Starts New effort
# - In effort notes
## Load r packages 
## not all packages required
#Visualizing data
require("ggplot2")      # Powerful and aesthetic plotting system for R
require("gridExtra")    # Arrange multiple ggplots in same figure (multi-panels)
require("scales")       #
require("RColorBrewer") # creates nice color schemes
require("corrplot")     # A graphical display of a correlation matrix between all combinations of variables
#Statistical analysis
require("stats")        # Lots of stats stuff
#Data management
require("plyr")         # Allows you t split data structure into groups (pollutant type, location, etc.) and apply function on each group
require("dplyr")
require("zoo")          # Helps streamline data if you have irregular time series
require("reshape2")     # Convert data with "wide" columns to "long" columns
require("lubridate")    # Date and time data made easy! See reference PDF in Google Drive
require("data.table")
#require("xlsx")         # Reads and writes to xlsx file
#Mapping tools
require("stringi")
require("ggmap")        # Plotting of maps same as you would with ggplot2
require("maptools")     # Read, write, and handle Shapefiles in R
require("mapdata")      # Supplement to maps package

### Input data as vectors 
date <- c("17/03/23", "17/03/25", "17/03/29", "17/04/04", "17/04/06", "17/04/08", "17/04/12", "17/04/16", "17/04/23", "17/04/29", "17/05/04", "17/05/07", "17/05/09", "17/05/11", "17/05/12", "17/05/17", "17/05/22", "17/05/24", "17/05/26", "17/05/30")
# Set data type
date <- as.POSIXct(date, format = "%y/%m/%d")
mass.out <- c(382+1725+705, 1415, 1469, 1440+229, 1104, 2013+555, 236+72+1230, 289+1520+41+108+71, 155+390+314+1411, 295+357+1402, 1404+108+104+491, 1341+135, 152+192+1329, 160+140+1501, 162+1070, 179+1992, 168+1355, 1365, 666+225, 1218)
mass.in <- c(35+742+470, 745, 753, 775+20, 767, 763+21, 20+19+734, 19+752+18+33+40, 33+309+55+723, 17+30+833, 758+28+19+30, 761+19, 20+18+758, 31+31+754, 19+714, 20+539, 40+534, 531, 532+20, 530)

