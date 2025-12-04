
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;

-- create a table to store employee salaries
CREATE TABLE employee(
 id INT,
 first_name VARCHAR(50),
 last_name VARCHAR(50),
salary INT,
department_id INT
);
-- create a department table
CREATE TABLE department(
id INT,
name VARCHAR(50)
);

INSERT INTO department (id, name) VALUES
(1, 'engineering'),
(2, 'marketing'),
(3, 'sales'),
(4, 'hr');

INSERT INTO employee (id, first_name, last_name, salary, department_id) VALUES
(1, 'Bob', 'Smith', 234535, 1),
(2, 'Jason', 'Joseph', 60000, 2),
(3, 'Dillon', 'Jefferson', 30000, 4),
(4, 'Ted', 'Thompson', 120000, 2),
(5, 'Bill', 'Smith', 85000, 1),
(6, 'Ed', 'Winters', 292314, 3),
(7, 'August', 'Rains', 222999, 4),
(8, 'Lakesha', 'Jackson', 421232, 2),
(9, 'Kevin', 'Johnson', 1000000, 1),
(10, 'Kylie', 'Craig', 100000, 2),
(11, 'Carl', 'Thurman', 30000, 1),
(12, 'Philip', 'Thomas', 90000, 2),
(13, 'Tim', 'Johnson', 85000, 2),
(14, 'Chris', 'Treeman', 292343, 1),
(15, 'Jessica', 'Williams', 50000, 4),
(16, 'Sammy', 'Walker', 443560, 1),
(17, 'Rob', 'Bryant', 1000000, 1),
(18, 'Jason', 'Rivers', 100000, 2),
(19, 'Britney', 'Morris', 75000, 1),
(20, 'Kyle', 'Miller', 234500, 1),
(21, 'Lucy', 'Reeves', 85000, 2),
(22, 'Eddie', 'James', 32500, 1),
(23, 'Graham', 'Micheals', 423500, 2),
(24, 'Macy', 'David', 50000, 2);