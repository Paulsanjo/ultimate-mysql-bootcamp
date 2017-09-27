-- count the number of characters in a string
SELECT CHAR_LENGTH('Hello World'); -- 11

-- example.
SELECT CONCAT_WS(' ', 'Hello World', 'is', CHAR_LENGTH('Hello World'), 'characters long');