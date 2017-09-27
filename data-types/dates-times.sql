DATE
-- date is represented internally as 'YYYY-MM-DD'.

TIME
-- time is represented internally as 'hh:mm:ss'.

DATETIME
-- datetime is represented internally as 'YYYY-MM-DD hh:mm:ss'.
--
-- max value range from 1000-01-01 00:00:00 to 9999-12-31 23:59:59.

TIMESTAMP
-- same as datetime, but the datetime is converted to the UTC time zone, and is converted to the local time zone when output.
--
-- max value range from 1970-01-01 00:00:00 UTC to 2038-01-19 03:14:07 UTC'.
--
-- takes up less space than datetime.