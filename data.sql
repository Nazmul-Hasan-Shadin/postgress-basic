
show timezone;
SELECT now();

SELECT CURRENT_DATE;

SELECT now()::date

create table timez (ts TIMESTAMP without TIME zone ,tsz TIMESTAMP with time zone)

SELECT * from timez

INSERT into timez VALUES('2024-01-12 10:34:00','2024-01-12 10:34:00')

SELECT to_char(now(),'yyyy/mm/dd')


SELECT CURRENT_DATE - INTERVAL '1 year'

-- to find age

SELECT age(CURRENT_DATE ,'2002-11-26')

SELECT *, age(CURRENT_DATE, dob) from  students;

SELECT extract ( MONTH FROM '2024-01-25'::date)

SELECT '0'::BOOLEAN