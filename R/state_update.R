#Script for updateing State tables

#Import faunctions for interacting with database
source("connection_db.R")
source("C:/Workspace/RStudioProjects/databasesync/R/connection_db.R")

#create Postgresql database connection
connection_postgere_census2011=createPostgresDBConnection("census2011","abhisha")

#Load data
State_Detail <- readRDS("C:/Workspace/RStudioProjects/databasesync/Data/State_Detail.Rds")


#Update DB
createAndUpdateDB(table_name = "State_Detail",table_data = State_Detail,connection = connection_postgere_census2011)
