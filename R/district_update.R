#Script for updateing State tables

#Import faunctions for interacting with database
source("connection_db.R")
source("C:/Workspace/RStudioProjects/databasesync/R/connection_db.R")

#create Postgresql database connection
connection_postgere_census2011=createPostgresDBConnection("census2011","abhisha")

#Load data
District_Detail <- readRDS(paste(getwd(),"/Data/District_Detail.Rds",sep = ""))


#Update DB
createAndUpdateDB(table_name = "District_Detail",table_data = District_Detail,connection = connection_postgere_census2011)
