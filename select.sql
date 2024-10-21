CREATE Table students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) not null,
    last_name VARCHAR(50) not null,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

-- Inserting 12 records into the students table
INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES 
('John', 'Doe', 20, 'A', 'Mathematics', 'john.doe@example.com', '2003-01-15', 'A+', 'USA'),
('Jane', 'Smith', 21, 'B', 'Physics', 'jane.smith@example.com', '2002-02-20', 'B+', 'Canada'),
('Michael', 'Brown', 19, 'A', 'Chemistry', 'michael.brown@example.com', '2004-03-25', 'O-', 'UK'),
('Emily', 'Davis', 22, 'C', 'Biology', 'emily.davis@example.com', '2001-04-30', 'AB+', 'Australia'),
('Daniel', 'Wilson', 23, 'B', 'History', 'daniel.wilson@example.com', '2000-05-05', 'A-', 'India'),
('Sophia', 'Moore', 20, 'A', 'Geography', 'sophia.moore@example.com', '2003-06-10', 'O+', 'Germany'),
('David', 'Taylor', 21, 'C', 'Computer Science', 'david.taylor@example.com', '2002-07-15', 'B-', 'USA'),
('Olivia', 'Anderson', 19, 'A', 'Literature', 'olivia.anderson@example.com', '2004-08-20', 'AB-', 'France'),
('James', 'Thomas', 22, 'B', 'Philosophy', 'james.thomas@example.com', '2001-09-25', 'A+', 'Italy'),
('Mia', 'Jackson', 23, 'C', 'Economics', 'mia.jackson@example.com', '2000-10-30', 'O-', 'Spain'),
('Ethan', 'White', 20, 'A', 'Sociology', 'ethan.white@example.com', '2003-11-15', 'B+', 'Mexico'),
('Charlotte', 'Harris', 21, 'B', 'Psychology', 'charlotte.harris@example.com', '2002-12-20', 'A-', 'Brazil');

 

--  SELECT email as "student Email" , age from students ;

-- for sorting 

  SELECT * from students ORDER BY first_name DESC  ;


-- for find unique country from table where student get admission we use distinict

select DISTINCT country from students ORDER BY country asc;

-- find data by filter

select * from students WHERE country='Brazil';

SELECT * from students WHERE grade='B' AND course='Psychology'

SELECT * FROM students WHERE (country='Brazil' OR country='India' )and age=21;

SELECT * FROM students WHERE age >20 and course='History'

SELECT * FROM students WHERE age !=23

-- to make capital leter of first letter it make anoter collom naem upper

-- scalaer fucntuion  run for individual row
/*

 upper()
 lower()
 concat()
 length()


*/
SELECT upper(first_name),  * from students

SELECT concat(first_name , ' ' , last_name) from students;


--     Aggrigiate function

/*
  avg() calculate the average of a set of values,
  maxx() return the max value in a set 
  min() returns the minimum value in a set. 
  sum() calculate the sum of values in a set .
  count () counts the number of rows in a set



*/


SELECT avg(age) from students ;
select count(*) from students;   age


select max(length(first_name)) from students;

-- bellow expression wont work beacaue perform + - anything with null retrun resutl null . we need a boolean for succesful query

select * from students where email !=NULL

-- for avobe problem
SELECT * from students WHERE email IS null;


SELECT email from students;

-- if a columen have null vaule and during query i want to show instedad of null onters we can use here coalesce();

SELECT COALESCE(email,'Email is not provided') as "Email",first_name,blood_group from students


-- 
SELECT * from students WHERE country='USA' OR country='Canada' or country='UK'
-- abobe query is too big to make smaller write in another pg_get_wal_resource_managers

SELECT * from students WHERE country NOT IN('USA','UK');
-- use between poerator
SELECT  * FROM students WHERE age BETWEEN 19 and 22 ORDER BY age;
 age
--  like e operatr its case SENSITIVE for search

SELECT *  from students WHERE first_name LIKE '%an'

SELECT *  from students WHERE first_name LIKE '__a%'
 


DELETE from students WHERE grade='B'

-- update a column data

UPDATE students SET emai='default@gmal.com' WHERE  student_id='1'