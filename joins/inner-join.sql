-- ANSI-89 syntax - implicit inner join
SELECT * FROM <table1>, <table2>
  WHERE <table1>.id = <table2>.fkid;
  
-- ANSI-92 syntax - explict inner join (preferred)
--
-- INNER key word is optional.
SELECT * FROM <table1> AS t1
  INNER JOIN <table2> AS t2
    ON t1.id = t2.fkid;