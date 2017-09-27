-- get the minimum value in a column.
SELECT MIN(col1) FROM <table>;

-- get the maximum value in a column.
SELECT MAX(col1) FROM <table>;

-- get the row with a minimum value.
SELECT * FROM <table>
  WHERE col1 = (SELECT MIN(col1) FROM <table>);
  
-- or..
SELECT * FROM <table>
  ORDER BY col1 ASC LIMIT 1;
  
-- get the row with a maximum value.
SELECT * FROM <table>
  WHERE col1 = (SELECT MAX(col1) FROM <table>);
  
-- or..
SELECT * FROM <table>
  ORDER BY col1 DESC LIMIT 1;