-- if any concatenated values are NULL, the entire string will be NULL
-- to overcome this, use ISNULL or COALESCE to set a default value.

-- concatenate two or more columns
SELECT id, CONCAT(col1, col2) AS alias
  FROM <table>;

-- concatenate two or more columns separated by a specified string
SELECT id, CONCAT_WS(" ", col1, col2, col3, col4, col5) AS alias
  FROM <table>;