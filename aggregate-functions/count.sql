-- count the number of rows matching where clause.
--
-- note: null markers are counted.
SELECT COUNT(*) FROM <table>;
  
-- count the number of rows with a null marker within the column
SELECT COUNT(*) FROM <table>
  WHERE col1 IS NULL;

-- count the number of rows with a column value.
--
-- note: where an expression is provided (col1), null markers are not counted.
SELECT COUNT(col1) FROM <table>
  WHERE col1 = 'value';

-- count the number of distinct occurrences of column values.
SELECT COUNT(DISTINCT col1) FROM <table>;