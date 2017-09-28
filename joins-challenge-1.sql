-- create new database.
DROP   DATABASE jc1_db;
CREATE DATABASE jc1_db;
USE    jc1_db;

-- write students - papers schema.
CREATE TABLE students (
  student_id INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100)
);

CREATE TABLE papers (
  paper_id  INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title     VARCHAR(100),
  grade     INT,
  student_id INT,
  FOREIGN KEY(student_id) REFERENCES students(student_id)
);

-- seed data.
INSERT INTO students (first_name) 
  VALUES ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
  
SHOW WARNINGS;

INSERT INTO papers (student_id, title, grade) 
  VALUES (1, 'My First Book Report', 60),
         (1, 'My Second Book Report', 75),
         (2, 'Russian Lit Through The Ages', 94),
         (2, 'De Montaigne and The Art of The Essay', 98),
         (4, 'Borges and Magical Realism', 89);
  
SHOW WARNINGS;

-- first name, title, grade descending
SELECT S.first_name, P.title, P.grade 
  FROM students AS S
    INNER JOIN papers AS P ON P.student_id = S.student_id
    ORDER BY P.grade DESC;

-- first name (null), title, grade (null)
SELECT S.first_name, P.title, P.grade
  FROM students AS S
    LEFT JOIN papers AS P ON P.student_id = S.student_id;

-- first name, title (null coalesce), grade
SELECT S.first_name, IFNULL(P.title, 'MISSING'), IFNULL(P.grade, 0)
  FROM students AS S
    LEFT JOIN papers AS P ON P.student_id = S.student_id;

-- first name, average
SELECT S.first_name, IFNULL(AVG(P.grade), 0) AS average
  FROM students AS S
    LEFT JOIN papers AS P ON P.student_id = S.student_id
  GROUP BY S.first_name
  ORDER BY average DESC;

-- first name, average passing status
SELECT S.first_name, IFNULL(AVG(P.grade), 0) AS average,
  CASE
    WHEN IFNULL(AVG(P.grade), 0) >= 75 THEN 'PASSING'
    ELSE 'FAILING'
  END AS passing_status
  FROM students AS S
    LEFT JOIN papers AS P ON P.student_id = S.student_id
  GROUP BY S.first_name
  ORDER BY average DESC;