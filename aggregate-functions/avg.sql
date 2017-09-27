-- calculate average.
SELECT AVG(col1) FROM <table>;

-- calculate average per group.
SELECT col1, AVG(col2) FROM <table>
  GROUP BY col1;