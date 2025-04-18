library(RMySQL)
library(DBI)

# create MySQL connection
con <- dbConnect(
  RMySQL::MySQL(),
  dbname = "cars",
  username = "mulyo",
  password = "Hasegawa@053",
  host = "localhost",
  port = 3306,
  options = "--local-infile"
)

# extract data
data(mtcars)

# transform data
mtcars_transformed <- mtcars

# load data
table_name <- "mtcars"

# Write into MySQL database
dbWriteTable(
  con,
  table_name,
  mtcars_transformed,
  overwrite = TRUE,
  row.names = TRUE
)

# write data into csv
write.csv(mtcars_transformed, "mtcars.csv")

# disconnect database
dbDisconnect(con)
