-- 1-Create a new database named "CompanyDB."
CREATE DATABASE "CompanyDB";
-- 2-Create a schema named "Sales" within the "CompanyDB" database.
CREATE SCHEMA sales;
-- 3-Create a table named "employees" with columns: 
-- employee_id (INT) - use sequence instead of identity,
-- first_name (VARCHAR),
-- last_name (VARCHAR),
-- salary (DECIMAL)
-- Within the "Sales" schema.
CREATE SEQUENCE sales.employee_seq START 1;

CREATE TABLE Sales.employees (
    employee_id INT PRIMARY KEY DEFAULT nextval('sales.employee_seq'),
    first_name  VARCHAR(50),
    last_name   VARCHAR(50),
    salary      DECIMAL(8,2)
);
-- 4-Alter the "employees" table to add a new column 
-- named "hire_date" with the data type DATE.
ALTER TABLE sales.employees
ADD COLUMN hire_date DATE;

-- 5-Add mock data to this table using Mockaroo.
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (1, 'Conant', 'Mattusov', 2.4, '9/24/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (2, 'Marice', 'Habden', 63.8, '4/6/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (3, 'Alleyn', 'Korneev', 82.9, '12/14/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (4, 'Ephraim', 'Duigenan', 57.4, '5/21/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (5, 'Anastassia', 'De Bell', 93.3, '7/18/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (6, 'Chaim', 'Wyeth', 42.0, '11/18/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (7, 'Shay', 'Trude', 30.4, '5/2/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (8, 'Joey', 'Berresford', 74.6, '4/25/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (9, 'Giulietta', 'McGillivrie', 64.8, '11/29/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (10, 'Bernardina', 'Pineaux', 18.3, '6/22/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (11, 'Carmina', 'Tooke', 85.7, '10/4/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (12, 'Glynda', 'Farman', 78.4, '7/19/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (13, 'Brennen', 'Suggett', 50.2, '4/24/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (14, 'Magdalena', 'Hoff', 37.2, '1/11/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (15, 'Laina', 'Kira', 39.3, '11/4/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (16, 'Booth', 'Stobart', 40.5, '5/13/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (17, 'Brena', 'Matuschek', 2.9, '3/6/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (18, 'Sabina', 'Coldwell', 9.1, '9/21/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (19, 'Kizzee', 'Dallyn', 47.7, '6/23/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (20, 'Shelley', 'Demangel', 88.2, '7/9/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (21, 'Letitia', 'Looney', 13.6, '4/14/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (22, 'Edik', 'Bradbrook', 50.3, '7/8/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (23, 'Reinald', 'Kelsall', 16.4, '12/20/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (24, 'Jocko', 'Ethelston', 30.5, '10/5/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (25, 'Glennis', 'Craske', 50.5, '7/11/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (26, 'Flor', 'Jannex', 7.1, '12/31/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (27, 'Mattie', 'Wrotham', 11.8, '9/19/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (28, 'Gaby', 'Marusic', 33.4, '7/21/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (29, 'Ade', 'Lutz', 86.1, '5/13/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (30, 'Nicola', 'Whitmell', 80.2, '9/19/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (31, 'Clay', 'Coker', 91.6, '6/16/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (32, 'Lissa', 'Kenworthey', 58.2, '4/5/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (33, 'Kory', 'Okey', 10.6, '7/6/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (34, 'Svend', 'Logue', 30.4, '10/5/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (35, 'Gena', 'Baitman', 42.2, '8/16/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (36, 'Eldon', 'Sumbler', 50.1, '8/19/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (37, 'Danell', 'Skerme', 97.9, '7/26/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (38, 'Loutitia', 'Letham', 98.1, '7/25/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (39, 'Kaitlyn', 'Rattray', 69.0, '9/30/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (40, 'Sallyanne', 'Jopke', 71.3, '12/22/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (41, 'Madelyn', 'Anscombe', 2.2, '8/3/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (42, 'Emmie', 'Heineke', 98.9, '1/27/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (43, 'Darla', 'Chavez', 63.1, '12/2/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (44, 'Deonne', 'Klimes', 33.4, '5/1/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (45, 'Emilee', 'Ouldred', 73.8, '6/23/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (46, 'Luelle', 'Hurkett', 56.9, '1/17/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (47, 'Jude', 'Le Galle', 74.0, '3/6/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (48, 'Casie', 'Hallyburton', 12.3, '5/1/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (49, 'Raymond', 'Provost', 59.4, '1/17/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (50, 'Paxton', 'Scampion', 11.9, '10/5/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (51, 'Anjanette', 'Pughe', 26.5, '10/12/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (52, 'Ewen', 'Grennan', 94.1, '7/20/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (53, 'Fairfax', 'Glasser', 20.1, '7/1/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (54, 'Konstance', 'Yele', 26.4, '3/17/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (55, 'Yvor', 'Spoerl', 19.0, '4/23/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (56, 'Cristine', 'Rymour', 70.6, '7/4/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (57, 'Eli', 'Playle', 86.6, '11/19/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (58, 'Fielding', 'Jefferys', 25.3, '2/20/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (59, 'King', 'Magor', 94.7, '9/12/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (60, 'Lanny', 'Faughny', 77.0, '5/30/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (61, 'Sashenka', 'Lombardo', 68.4, '1/8/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (62, 'Marshall', 'Moorcroft', 93.5, '7/19/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (63, 'Robin', 'Bridgwater', 52.6, '11/15/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (64, 'Shelden', 'Edgeley', 74.0, '6/17/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (65, 'Marybelle', 'Currm', 45.9, '9/22/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (66, 'Alana', 'Pavelka', 57.1, '6/4/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (67, 'Hyatt', 'Lambe', 52.6, '8/29/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (68, 'Arther', 'Follit', 99.2, '5/27/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (69, 'Milty', 'Kinzel', 43.3, '3/23/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (70, 'Drusy', 'McAmish', 55.4, '6/16/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (71, 'Gillan', 'Coffey', 75.0, '6/6/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (72, 'Lana', 'Toomey', 11.9, '11/23/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (73, 'Adaline', 'Sandford', 31.6, '6/19/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (74, 'Clay', 'Aspey', 26.3, '11/1/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (75, 'Kanya', 'Hrynczyk', 34.5, '9/5/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (76, 'Cal', 'Pisculli', 24.0, '10/4/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (77, 'Robbyn', 'Elsby', 44.2, '10/7/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (78, 'Sondra', 'Dirkin', 77.3, '9/25/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (79, 'Sheffy', 'Baskeyfied', 15.1, '1/14/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (80, 'Genevieve', 'Attfield', 11.0, '8/9/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (81, 'Lurleen', 'Coxon', 51.5, '7/17/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (82, 'Melli', 'Costello', 84.4, '1/5/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (83, 'Waylan', 'Yerson', 18.1, '3/27/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (84, 'Alexina', 'Trodler', 85.1, '3/8/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (85, 'Leela', 'Lapping', 5.2, '1/16/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (86, 'Wye', 'Ambrosoli', 75.6, '12/31/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (87, 'Zebulen', 'Narup', 52.2, '3/3/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (88, 'Georgina', 'Sussex', 70.2, '10/5/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (89, 'Eamon', 'Simons', 81.4, '12/30/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (90, 'Tris', 'Gossage', 44.8, '7/26/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (91, 'Elinor', 'Falkingham', 32.3, '11/25/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (92, 'Bernadine', 'Partner', 89.5, '6/29/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (93, 'Ursala', 'De Rye Barrett', 52.4, '4/7/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (94, 'Rebeca', 'Chritchlow', 11.9, '12/30/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (95, 'Norri', 'Trimnell', 49.7, '6/22/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (96, 'Hubert', 'Deschlein', 8.7, '4/10/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (97, 'Huntley', 'Newall', 98.0, '2/14/2025');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (98, 'Pascal', 'Peyro', 26.8, '10/30/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (99, 'Lilly', 'Kleis', 72.7, '6/13/2024');
insert into sales.employees (employee_id, first_name, last_name, salary, hire_date) values (100, 'Yul', 'Rushby', 73.8, '9/7/2024');

-- DATA MANIPULATION Exercises:
-- Select all columns from the "employees" table.
SELECT * FROM sales.employees;
-- Retrieve only the "first_name" and "last_name" columns from the "employees" table.
SELECT first_name, last_name FROM sales.employees;
-- Retrieve "full name" as a one column from "first_name" and "last_name" columns from the "employees" table.
SELECT first_name || ' ' || last_name AS full_name FROM sales.employees;
-- Show the average salary of all employees. (Use AVG() function)
SELECT AVG(salary) AS avg_salary FROM sales.employees;
-- Select employees whose salary is greater than 50000.
SELECT * FROM sales.employees WHERE salary > 50000;
-- Retrieve employees hired in the year 2020.
SELECT * FROM sales.employees
WHERE hire_date BETWEEN '2020-01-01' AND '2020-12-31';
-- List employees whose last names start with 'S'.
SELECT * FROM sales.employees WHERE last_name ILIKE 'S%';
-- Display the top 10 highest-paid employees.
SELECT * FROM sales.employees
ORDER BY salary DESC
LIMIT 10;
-- Find employees with salaries between 40000 and 60000.
SELECT * FROM sales.employees
WHERE salary BETWEEN 40000 AND 60000;
-- Show employees with names containing the substring 'man'.
SELECT * FROM sales.employees
WHERE (first_name || last_name) ILIKE '%man%';
-- Display employees with a NULL value in the "hire_date" column.
SELECT * FROM sales.employees WHERE hire_date IS NULL;
-- Select employees with a salary in the set (40000, 45000, 50000).
SELECT * FROM sales.employees
WHERE salary IN (40000,45000,50000);
-- Retrieve employees hired between '2020-01-01' and '2021-01-01'.
SELECT * FROM sales.employees
WHERE hire_date >= '2020-01-01' AND hire_date < '2021-01-02';
-- List employees with salaries in descending order.
SELECT * FROM sales.employees ORDER BY salary DESC;
-- Show the first 5 employees ordered by "last_name" in ascending order.
SELECT * FROM sales.employees
ORDER BY last_name ASC
LIMIT 5;
-- Display employees with a salary greater than 55000 and hired in 2020.
SELECT * FROM sales.employees
WHERE salary > 55000 AND hire_date BETWEEN '2020-01-01' AND '2020-12-31';
-- Select employees whose first name is 'John' or 'Jane'.
SELECT * FROM sales.employees
WHERE first_name IN ('John','Jane');
-- List employees with a salary ≤ 55000 and a hire date after '2022-01-01'.
SELECT * FROM sales.employees
WHERE salary <= 55000 AND hire_date > '2022-01-01';
-- Retrieve employees with a salary greater than the average salary.
SELECT * FROM sales.employees
WHERE salary > (SELECT AVG(salary) FROM sales.employees);
-- Display the 3rd to 7th highest-paid employees. (Use OFFSET and FETCH)
SELECT * FROM sales.employees
ORDER BY salary DESC
OFFSET 2   
LIMIT 5;
-- List employees hired after '2021-01-01' in alphabetical order.
SELECT * FROM sales.employees
WHERE hire_date > '2021-01-01'
ORDER BY last_name, first_name;
-- Retrieve employees with a salary > 50000 and last name not starting with 'A'.
SELECT * FROM sales.employees
WHERE salary > 50000 AND last_name NOT ILIKE 'A%';
-- Display employees with a salary that is not NULL.
SELECT * FROM sales.employees WHERE salary IS NOT NULL;
-- Show employees with names containing 'e' or 'i' and a salary > 45000.
SELECT * FROM sales.employees 
WHERE (first_name ILIKE '%e%' OR first_name ILIKE '%i%' OR
   last_name  ILIKE '%e%' OR last_name  ILIKE '%i%') AND salary > 45000;
-- Create a new table named "departments" with columns:
-- department_id (Primary Key, INT),
-- department_name (VARCHAR),
-- manager_id (INT, references "employees".employee_id).
CREATE TABLE sales.departments (
    department_id  INT PRIMARY KEY,
    department_name VARCHAR(50),
    manager_id INT REFERENCES sales.employees(employee_id)
);
-- Assign each employee to a department by creating a "department_id" 
-- column in "employees" and making it a foreign key referencing "departments".department_id.
ALTER TABLE sales.employees
ADD COLUMN department_id INT REFERENCES sales.departments(department_id);
-- data
INSERT INTO sales.departments (department_id, department_name, manager_id)
VALUES
  (1, 'f', 1),
  (2, 'm', 2),
  (3, 's', 3);
UPDATE sales.employees SET department_id = 1 WHERE employee_id IN (1, 4);
UPDATE sales.employees SET department_id = 2 WHERE employee_id IN (2, 5);
UPDATE sales.employees SET department_id = 3 WHERE employee_id IN (3, 6);
-- Retrieve all employees with their department names (Use INNER JOIN).
SELECT e.first_name, e.last_name, d.department_name
FROM sales.employees e
INNER JOIN sales.departments d
ON e.department_id = d.department_id;

-- Retrieve employees who don’t belong to any department (Use LEFT JOIN and check for NULL).
SELECT e.*
FROM sales.employees e
LEFT JOIN sales.departments d
ON e.department_id = d.department_id
WHERE d.department_id IS NULL;

-- Show all departments and their employee count (Use JOIN and GROUP BY).
SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM sales.departments d
LEFT JOIN sales.employees e
ON d.department_id = e.department_id
GROUP BY d.department_name;

-- Retrieve the highest-paid employee in each department (Use JOIN and MAX(salary)).
SELECT d.department_name, e.first_name, e.last_name, e.salary
FROM sales.employees e
JOIN sales.departments d ON e.department_id = d.department_id
WHERE e.salary = (
  SELECT MAX(salary)
  FROM sales.employees
  WHERE department_id = d.department_id
);

-- 31. Group employees by their department and calculate the average salary for each department.
SELECT d.department_name, AVG(e.salary) AS average_salary
FROM sales.employees e
JOIN sales.departments d ON e.department_id = d.department_id
GROUP BY d.department_name;
-- 32. Insert a new employee into the "employees" table with a salary and hire date.
INSERT INTO sales.employees (employee_id, first_name, last_name, salary, hire_date, department_id)
VALUES (101, 'Nora', 'White', 51000, '2024-05-10', 2);
-- 33. Update the salary of employees who earn less than 45000 to 46000.
UPDATE sales.employees
SET salary = 46000
WHERE salary < 45000;
-- 34. Delete employees who have a NULL hire date.
DELETE FROM sales.employees
WHERE hire_date IS NULL;
-- 35. Create an index on the salary column in the "employees" table to optimize queries filtering by salary.
CREATE INDEX idx_salary ON sales.employees(salary);
