 --DDL

-- Active: 1729428040566@@127.0.0.1@5432@ph

SELECT * from person2;

ALTER Table person2 ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL

INSERT into  person2  values(10,'test',45,'test2@gmail.com')

-- remove existing column 
ALTER Table person2 DROP COLUMN email

-- rensame existing column in table

alter table  person2 RENAME  age to user_age


-- change existing table type

alter TABLE person2 ALTER COLUMN username TYPE varchar(50)

-- add constrant in existing colojmn

ALTER table person2 alter COLUMN user_age  set NOT NULL

-- remove contsrtant

alter table person2 alter COLUMN user_age drop not NULL;

-- add contraint for  uniqe

alter table  person2 add constraint   unique_person2_userage UNIQUE(user_age);

alter table  person2 DROP constraint   unique_person2_userage

--add constrant primaru ke in a coloumn



alter table  person2 add constraint   pk_unique_person2_userage PRIMARY KEY(id);


-- remove table all row but have column and constraint for taht 

TRUNCATE Table person2;