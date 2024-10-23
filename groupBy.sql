SELECT * from students;

SELECT country, count(*),avg(age) from  students GROUP BY country;

 
--  Filter groups using having to show only countries with average age above 22
SELECT country,avg(age) from  students GROUP BY country HAVING avg(age) >20;

 select extract(year from dob) as birth_year ,count(*)  from students GROUP BY birth_year

 
