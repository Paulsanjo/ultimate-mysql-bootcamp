USE book_shop;

-- fill in the blanks.
DROP TABLE inventory;

CREATE TABLE inventory (
  item_name VARCHAR(100),
  price DECIMALS(8, 2),
  quantity INT
);

-- print out the current time.
SELECT CURTIME();

-- print out the current date.
SELECT CURDATE();

-- print out the current day of the week (number).
SELECT DAY(CURDATE());

-- print out the current day of the week (name).
SELECT DAYNAME(CURDATE());

-- print out date in format mm/dd/yyyy.
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

-- print out date and time in format January 2nd at 3:15
SELECT DATE_FORMAT('2017-01-02 03:15:00', '%M %D at %h:%i');

-- print out date and time in format April 1st at 10:18
SELECT DATE_FORMAT('2017-04-01 10:18:00', '%M %D at %h:%i');


