-- by default, LIKE is case-insensitive. this will also depend on the collation set for the comparing column.
-- to make a case sensitive comparison, use LIKE BINARY.

-- % wild card
--
-- select where column contains substring at the beginning.
SELECT <columns> FROM <table>
  WHERE col1 LIKE 'substr%';
  
-- select where column contains substring at the end.
SELECT <columns> FROM <table>
  WHERE col1 LIKE '%substr';
  
-- select where column contains substring anywhere.
SELECT <columns> FROM <table>
  WHERE col1 LIKE '%substr%';
  
-- _ wild card
-- underscore represents any character, but only a single instance.
--
-- select where column value length is equal to the number of underscores, e.g. 5.
SELECT <columns> FROM <table>
  WHERE col1 LIKE '_____';
  
-- \ escape character
-- to use a wild card or other key character as part of the literal search, it must be prefixed with the escape character.
SELECT <columns> FROM <table>
  WHERE col1 LIKE '___\%';
