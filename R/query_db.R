

#This function creates a table if it does not exists and then update the table with data.
createAndUpdateDB = function(table_name, table_data,connection){
  if(dbExistsTable(name = table_name,conn = connection))
    
    dbCreateTable(conn = connection,
                  name = table_name,
                  fields = table_data,
                  row.names = NULL)
  
  dbWriteTable(conn = connection, 
               name = table_name, 
               value = table_data, 
               append = TRUE, 
               row.names = FALSE)
}
