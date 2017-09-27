-- order query results by a unique set of columns.
--
-- if a non-unique set of columns is used, the sort is classified as non-deterministic 
-- as the order in which all rows with the same sort criteria will be ordered is unknown.
-- 
-- null values are above all other values.
SELECT <columns>
  FROM <table>
  WHERE <where_clause>
  ORDER BY col1, col2 [ASC/DESC];