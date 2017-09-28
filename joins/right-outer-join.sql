-- outer joins not supported by ANSI-89 syntax

-- ANSI-92 syntax 
SELECT <table1>.col1, <table2>.col2 FROM <table1> 
  RIGHT JOIN <table2>
    ON <table1>.id = <table2>.fkid;
    
-- in this example, if there is no corresponding entry in the left hand table, the right hand table
-- row is still output, but with NULL for table 1 values.