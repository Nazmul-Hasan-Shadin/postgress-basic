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

--   SELECT * from students ORDER BY first_name DESC  ;