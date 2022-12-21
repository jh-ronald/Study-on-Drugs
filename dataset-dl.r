dl <- tempfile()
download.file(
  "https://raw.githubusercontent.com/jh-ronald/Study-on-Drugs/master/drugs_side_effects_drugs_com.csv",
  destfile = dl)

if(!require(tidyverse)) install.packages("tidyverse", repos = "http://cran.us.r-project.org")
if(!require(data.table)) install.packages("data.table", repos = "http://cran.us.r-project.org")
library(tidyverse)
library(data.table)

temp <- read_csv(dl, show_col_types = "FALSE")
drugs <- data.table(temp)

col_class <- data.frame(sapply(drugs, class))