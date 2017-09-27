-- sort to ensure NULL rows appear at the bottom
SELECT col1, col2, col3
  FROM <table>
  ORDER BY   
    CASE
      WHEN col4 IS NULL THEN 1
      ELSE 0
    END
    ,col4;
