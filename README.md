# ETL_R_MySQL
ETL Process Using R &amp; MySQL
# *Overview*
Repository to perfrom ETL step by step, using R to conduct start from extracting - transforming - loading. Using CSV file as input & MySQL as datawarehouse. This project how to using R language to conduct ETL in simplest way, hence using small sample just for demonstration. 
# *Prerequisites* 
To follow along with this project, you will need:
- MySQL server running
  ```bash
  sudo systemctl status mysql
- R installed
  ```R
  R --version
ETL using R are following below steps:
1. Load necessary library -- RMySQL, DBI
   ```R
   library(RMySQL)
   library(DBI)
3. Create connection with local MySQL -- passing dbname, host, user, password, port
   ```R
   # create MySQL connection
   con <- dbConnect(
    RMySQL::MySQL(),
    dbname = "cars",
    username = "*****",
    password = "*****",
    host = "localhost",
    port = 3306,
    options = "--local-infile"
   )
5. Extract (E) -- using R dataset
   ```R
   # extract data
   data(mtcars)
7. Transform (T) -- passing data into R variable
   ```R
   # transform data
   mtcars_transformed <- mtcars
9. Load (L) -- write data into MySQL database
    ```R
    # transform data
    mtcars_transformed <- mtcars
11. Load (L) -- write data into csv file
    ```R
    # write data into csv
    write.csv(mtcars_transformed, "mtcars.csv")
13. Close the connection
    ```R
    # disconnect database
    dbDisconnect(con)
