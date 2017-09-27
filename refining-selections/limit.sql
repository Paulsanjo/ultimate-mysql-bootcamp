-- limit query results by N rows from the top.
SELECT <columns> FROM <table> LIMIT n;

-- limit query results by skipping N rows, then taking the top M rows.
SELECT <columns> FROM <table> LIMIT n,m;

-- setting the query limit to more than the number of rows in the table will return all rows.
SELECT <columns> FROM <table> LIMIT 9999999999;
