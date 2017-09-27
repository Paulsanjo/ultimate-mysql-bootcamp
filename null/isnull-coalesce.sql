-- set value if NULL is present.
ISNULL(col1, 'value');

-- return the first value to not be NULL.
COALESCE(col1, col2, 'not null', col3);