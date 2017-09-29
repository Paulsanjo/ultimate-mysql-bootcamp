-- drop database if it already exists
DROP DATABASE shirts_db;

-- create database
CREATE DATABASE shirts_db;

-- select database
USE shirts_db;

-- create table
CREATE TABLE shirts (
  shirt_id   INT         NOT NULL AUTO_INCREMENT,
  article    VARCHAR(20) NOT NULL,
  colour     VARCHAR(10) NOT NULL,
  shirt_size CHAR(2)     NOT NULL,
  last_worn  INT         NOT NULL DEFAULT 0,
  PRIMARY KEY (shirt_id)
);
        
 SHOW WARNINGS;

-- seed data
INSERT INTO shirts(article, colour, shirt_size, last_worn)
  VALUES('t-shirt',    'white', 'S',  10),
        ('t-shirt',    'green', 'S', 200),
        ('polo shirt', 'black', 'M',  10),
        ('tank top',   'blue',  'S',  50),
        ('t-shirt',    'pink',  'S',   0),
        ('polo shirt', 'red',   'M',   5),
        ('tank top',   'white', 'S', 200),
        ('tank top',   'blue',  'M',  15);
        
 SHOW WARNINGS;
        
 -- add a new shirt
 INSERT INTO shirts(article, colour, shirt_size, last_worn)
   VALUES('polo shirt', 'purple', 'M', 50);
        
 SHOW WARNINGS;
 
 -- select all shirts, but only print article and colour
 SELECT article, colour
   FROM shirts;
 
 -- select all medium shirts, print out everything except shirt_id
 SELECT article, colour, shirt_size, last_worn
   FROM shirts;
   
 -- update all polo shirts and change their size to L
 UPDATE shirts 
     SET shirt_size = 'L'
   WHERE article = 'polo shirt';
    
 SHOW WARNINGS;
 
 -- update the shirt last worn 15 days ago to 0
 UPDATE shirts
     SET last_worn = 0
   WHERE last_worn = 15;
    
 SHOW WARNINGS;
 
 -- update all white shirts size to 'XS' and colour to 'off white'
 UPDATE shirts
    SET shirt_size = 'XS',
        colour     = 'off white'
    WHERE colour = 'white';
    
 SHOW WARNINGS;
 
 -- delete all old shirts last worn 200 days ago
 DELETE FROM shirts WHERE last_worn = 200;
 
 -- delete all tank tops
 DELETE FROM shirts WHERE article = 'tank top';
 
 -- delete all shirts
 DELETE FROM shirts;