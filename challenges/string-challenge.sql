-- Reverse and Uppercase Sentence
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));

-- What does this print out?
SELECT
  REPLACE(
    CONCAT('I', ' ', 'like', ' ', 'cats'),
    ' ',
    '_'
  );
-- I_like_cats

-- Replace spaces with '->'
USE book_shop;
SELECT REPLACE(title, ' ', '->') FROM books;

-- Print this out: (forwards, backwards)
USE book_shop;
SELECT author_lname AS 'forwards', REVERSE(author_lname) AS 'backwards' FROM books;

-- Full name in capitals
USE book_shop;
SELECT UPPER(CONCAT_WS(" ", author_fname, author_lname)) AS 'full name in caps' FROM books;

-- Blurb.
USE book_shop;
SELECT CONCAT_WS(' ', title, 'was released in', released_year) AS 'blurb' FROM books;

-- Print book title and length of each title.Print
USE book_shop;
SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

-- Shortened title.
USE book_shop;
SELECT CONCAT(SUBSTRING(title, 1, 13), '...') AS 'short title'
  ,CONCAT_WS(', ', author_lname, author_fname) AS author
  ,CONCAT_WS(' ', stock_quantity, 'in stock') AS quantity
  FROM books;