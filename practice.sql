
create table employee(
    employee_id SERIAL PRIMARY KEY,
    emplyee_name VARCHAR(50),
    department_id int REFERENCES departments(department_id),
    salary DECIMAL(10,2),
    hire_date DATE
)

CREATE table  departments(
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

 SELECT * FROM  departments


  SELECT * FROM  employee



INSERT INTO employee (emplyee_name, department_id, salary, hire_date)
VALUES 
('John Doe', 1, 55000.00, '2021-03-15'),
('Jane Smith', 2, 75000.00, '2020-11-22'),
('Mark Johnson', 3, 48000.00, '2022-01-10'),
('Emily Davis', 4, 62000.00, '2019-07-03');


