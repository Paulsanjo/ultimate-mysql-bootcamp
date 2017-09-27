-- define table column with addition ON UPDATE CURRENT_TIMESTAMP to update timestamp whenever a table is updaed.
CREATE TABLE <table> (
  timestmp TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);