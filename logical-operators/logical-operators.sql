-- equal
SELECT 1 = 1; -- 1
SELECT 1 = 2; -- 0

-- not equal (negated equals)
SELECT 1 != 1 -- 0
SELECT 1 != 2 -- 1

-- greater than/greater than or equal to
SELECT 3 >= 4; -- 0
SELECT 4 > 3;  -- 1

-- less than/less than or equal to
SELECT 3 <= 4; -- 1
SELECT 4 < 3;  -- 0

-- like
SELECT 'INIT_CONST' LIKE '%\_%'; -- 1

-- not like
SELECT 'INIT_CONST' NOT LIKE '%\_%'; -- 0

-- logical and
SELECT 1 && 1; -- 1
SELECT 1 && 0; -- 0
SELECT 0 && 0; -- 1

-- logical or
SELECT 1 || 1; -- 1
SELECT 1 || 0; -- 1
SELECT 0 || 0; -- 0

-- between (include of lower and upper values)
SELECT col1, col2, col3 FROM <table>
  WHERE date BETWEEN '1980-01-01' AND '1981-01-01';

-- if between is used on a datetime column, you may find the desired
-- rows are not returned:
SELECT * FROM datetime
  WHERE datetime BETWEEN '1980-01-01' AND '1981-01-01';

-- if the row was to contain a value for the upper boundary (1981-01-01)
-- but also has a time (e.g. 12:00:00), it will not be returned.
-- therefore, the following should be used:
SELECT * FROM datetime
  WHERE datetime BETWEEN '1980-01-01 00:00:00' AND '1981-01-01 23:59:59';

-- this can be programmatically generated as follows:
DATE_SUB(CAST('1981-01-02' AS DATETIME), INTERVAL 1 SECOND);

-- not between (include of lower and upper values)
SELECT col1, col2, col3 FROM <table>
  WHERE date NOT BETWEEN '1980-01-01' AND '1981-01-01';

-- in
SELECT col1, col2, col3 FROM <table>
  WHERE col1 IN ('value1', 'value2', 'value3');

-- not in
SELECT col1, col2, col3 FROM <table>
  WHERE col1 NOT IN ('value1', 'value2', 'value3');