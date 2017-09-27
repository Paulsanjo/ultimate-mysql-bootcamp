USE book_shop;

-- evaluate the following:
SELECT 10 != 10; --> 1

SELECT 15 > 14 && 99 - 5 <= 94; --> 0

SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10; --> 1

-- select all books written before 1980 (non-inclusive)
SELECT * FROM books
  WHERE released_year < 1980;

-- select all books written by Eggers or Chabon
SELECT * FROM books
  WHERE author_lname IN ('Eggers', 'Chabon');

-- select all books written by Lahiri, published after 2000
SELECT * FROM books
  WHERE author_lname = 'Lahiri'
    AND released_year > 2000;

-- select all books with page counts between 100 and 200
SELECT * FROM books
  WHERE pages BETWEEN 100 AND 200;

-- select all books where author's last name starts with a C or an S
SELECT * FROM books
  WHERE author_lname LIKE 'C%'
     or author_lname LIKE 'S%';

-- Short Stories, Memoirs and Novels
SELECT title, author_lname,
  CASE
    WHEN title LIKE '%stories'              THEN 'Short Stories'
    WHEN title = 'Just Kids'                THEN 'Memoir'
    WHEN title LIKE 'A Heartbreaking Work%' THEN 'Memoir'
    ELSE 'Novel'
  END AS type
  FROM books;

-- Bonus
SELECT title, author_lname
  FROM books;

