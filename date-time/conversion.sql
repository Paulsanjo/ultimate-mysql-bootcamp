-- cast to data type (part of SQL standard)
SELECT CAST('2017-01-01' AS DATETIME) --> '2017-01-01 00:00:00'

-- convert to data type
SELECT CONVERT('2017-01-01', DATETIME) --> '2017-01-01 00:00:00'

-- convert character set
SELECT CONVERT('abapr16' USING utf8); --> 'abapr16'

-- convert string to binary string for byte-by-byte character comparison.
BINARY('abapr16') --> abapr16
-- it is the same as CAST(value AS BINARY)

-- non-binary string
SELECT 'abapr16' = 'ABAPR16'; --> 1

-- binary string.
SELECT 'abapr16' = BINARY 'ABAPR16'; --> 0;
SELECT 'abapr16' = BINARY 'abapr16'; --> 1;

