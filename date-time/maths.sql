-- calculate the difference between two dates in days.
-- if a datetime is provided, only the date part is used.
SELECT DATEDIFF(date1, date2) FROM <table>;

-- add a number of units to a date.
SELECT DATE_ADD(date1, n INTERVAL <unit>);

-- subtract a number of units from a date.
SELECT DATE_SUB(date1, n INTERVAL <unit>);

-- add directly to date.
SELECT date + INTERVAL 1 <unit> FROM <table>;

-- subtract directly from date.
SELECT date - INTERVAL 1 <unit> FROM <table>;