-- date/datetime functions.
--
-- extract day number from date/datetime.
SELECT DAY(date) FROM <table>;

-- determine day name from date/datetime.
SELECT DAYNAME(date) FROM <table>;

-- determine day of week from date/datetime.
SELECT DAYOFWEEK(date) FROM <table>;

-- determine day of year from date/datetime.
SELECT DAYOFYEAR(date) FROM <table>;

-- extract month number from date/datetime.
SELECT MONTH(date) FROM <table>;

-- determine month name from date/datetime.
SELECT MONTHDATE(date) FROM <table>;

-- time/datetime functions.
--
-- extract hour, minute and second from time/datetime.
SELECT HOUR(time), MINUTE(time), SECOND(time) FROM <table>;

-- print out date in particular format using a format mask.
SELECT DATE_FORMAT(date, '%m/%d/%Y');