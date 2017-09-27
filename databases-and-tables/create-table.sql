-- ensure you set the database first
-- use <db>;

-- create table with NULL/NOT NULL flags
CREATE TABLE <table> (
  col1 DATA_TYPE NULL/NOT NULL,
  col2 DATA_TYPE NOT NULL,
  col3 DATA_TYPE NOT NULL,
  col4 DATA_TYPE NULL,
  col5 DATA_TYPE NULL
);

-- create table with explicit default values
CREATE TABLE <table> (
  col1 VARCHAR(10) NOT NULL DEFAULT 'column1',
  col2 INT         NOT NULL DEFAULT 99
);

-- create table with primary key constraint
CREATE TABLE <table> (
  col1 VARCHAR(10) NOT NULL,
  col2 INT         NOT NULL,
  PRIMARY KEY (col1)
)

-- create table with a single column primary key constraint
CREATE TABLE <table> (
  col1 INT         NOT NULL PRIMARY KEY,
  col2 VARCHAR(10) NOT NULL
)

-- create table with auto-incrementing primary key constraint
CREATE TABLE <table> (
  col1 INT         NOT NULL AUTO_INCREMENT,
  col2 VARCHAR(10) NOT NULL,
  PRIMARY KEY (col1)
)

-- create table with primary key named constraint
CREATE TABLE <table> (
  col1 VARCHAR(10) NOT NULL,
  col2 INT         NOT NULL,
  CONSTRANT PK_table PRIMARY_KEY (col1, col2)
)