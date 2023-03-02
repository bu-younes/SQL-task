--1. Create a view on table employee which includes the details of employees belonging to department 10. 
CREATE VIEW dept_employees AS
SELECT *
FROM employees
WHERE dep_id = 1001;

SELECT *
FROM dept_employees;

--2. Create the above view with check option so that it accepts only records of department 10. 
CREATE VIEW dept_employee AS
SELECT *
FROM employees
WHERE dep_id = 1001
WITH CHECK OPTION;

SELECT *
FROM dept_employee;
--3. Create a view using inner join on the tables dept and emp.  
CREATE VIEW dept_emp_view AS
SELECT d.dep_id, d.dep_name, d.dep_location, e.emp_id, e.emp_name, e.job_name, e.manager_id, e.hire_date, e.salary, e.commission
FROM department d
INNER JOIN employees e
ON d.dep_id = e.dep_id;


SELECT * FROM dept_emp_view;


--4. Create a view using right join on the tables dept and emp along with schema binding.
CREATE VIEW dept_emp_views AS
SELECT d.dep_id, d.dep_name, d.dep_location, e.emp_id, e.emp_name, e.job_name, e.manager_id, e.hire_date, e.salary, e.commission
FROM department d
RIGHT JOIN employees e
ON d.dep_id = e.dep_id;


SELECT * FROM dept_emp_views;
.