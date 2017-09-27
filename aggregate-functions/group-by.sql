-- aliases can be used within the group by clause, where as they can not be used in MSSQL or Oracle

-- group by 1 or more columns.
SELECT col1 as a, col2, col3 FROM books
  GROUP BY a;