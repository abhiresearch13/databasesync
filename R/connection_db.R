
library(RPostgreSQL)
library(RSQLite)
library(DBI)

#This script has code to create connection to the database

# List of password
pw <- {"abhisha"}


#This chunk of code is for making connections to the 
# loads the PostgreSQL driver
drv <- dbDriver("PostgreSQL")


createPostgresDBConnection = function(connectDB,pw){
  dbConnect(dbDriver("PostgreSQL"), 
            dbname =connectDB ,
            host = "localhost", 
            port = 5432,
            user = "postgres", 
            password = pw)
}

#This function creates connection to the specified SQLite database
#connectDB: Name of the file with the database.Example: xxxxxx.sqlite
#db_path: path of the folder in which the databse is stored
createSQLiteDBConnection = function(connectDB,db_path){
  dbConnect(RSQLite::SQLite(),
            paste(db_path,
                  "/",
                  connectDB,
                  sep = "")) 
  }
