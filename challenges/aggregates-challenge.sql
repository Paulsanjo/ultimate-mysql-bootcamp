-- select database.
USE book_shop;

-- print number of books in the database.
SELECT COUNT(*) FROM books;

-- print number of books released per year.
SELECT released_year, COUNT(*) FROM books
  GROUP BY released_year
  ORDER BY released_year;
  
-- print out total number of books in stock.
SELECT SUM(stock_quantity) FROM books;

-- find the average released year for each author.
SELECT CONCAT_WS(' ', author_fname, author_lname) AS author, AVG(released_year)
  FROM books
  GROUP BY author;
  
-- find the full name of the author who wrote the longest book.
SELECT CONCAT_WS(' ', author_fname, author_lname) AS author_fname
  FROM books
  ORDER BY pages DESC, title LIMIT 1;
  
-- make this happen.
SELECT released_year AS 'year', COUNT(*) AS '# books', AVG(pages) AS 'avg pages'
  FROM books
  GROUP BY released_year
  ORDER BY released_year;