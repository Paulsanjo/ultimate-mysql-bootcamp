-- extract substring from position for length.
SELECT SUBSTRING('Hello World', 1, 4); --> Hello
SELECT SUBSTR('Hello World', 1, 4);    --> Hello

-- extract substring from position to end.
SELECT SUBSTRING('Hello World', 7);    --> World
SELECT SUBSTR('Hello World', 7);       --> World

-- extract substring from end.
SELECT SUBSTRING('Hello World', -3);   --> rld
SELECT SUBSTRING('Hello World', -3);   --> rld