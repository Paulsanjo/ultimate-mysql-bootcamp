-- drop database if it already exists.
DROP DATABASE orders_db;

-- create and use new database.
CREATE DATABASE orders_db;
USE orders_db;
SELECT database();

-- create customer table.
CREATE TABLE customers (
  cust_id    INT           NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  first_name VARCHAR(100)  NOT NULL,
  last_name  VARCHAR(100),
  email      VARCHAR(255)
);

-- create orders table.
CREATE TABLE orders (
  order_id   INT            NOT NULL AUTO_INCREMENT PRIMARY KEY,
  order_date DATE,
  amount     DECIMAL(10,2),
  cust_id    INT,
  FOREIGN KEY(cust_id) 
    REFERENCES customers(cust_id)
    ON DELETE CASCADE
);

-- seed customer data.
INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
SHOW WARNINGS;
SELECT * FROM customers;
       
-- seed orders data.
INSERT INTO orders (order_date, amount, cust_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
SHOW WARNINGS;
SELECT * FROM orders;
  
