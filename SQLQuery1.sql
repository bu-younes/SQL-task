CREATE TABLE department(
dep_id INTEGER PRIMARY KEY,
dep_name VARCHAR(20),
dep_location VARCHAR(15)
);
CREATE TABLE salary_grade(
grade INTEGER,
min_salary INTEGER,
max_salary INTEGER
);
CREATE TABLE employees(
	emp_id INTEGER,
	emp_name VARCHAR(15),
	job_name VARCHAR(10),
	manager_id INTEGER,
	hire_date DATE,
	salary DECIMAL(10, 2),
	commission DECIMAL(7,2),
	dep_id INTEGER,Foreign key(dep_id)
	REFERENCES department(dep_id),
);



   INSERT INTO department
   (dep_id  , dep_name  , dep_location)
   VALUES
   (   1001 , 'FINANCE'   ,'SYDNEY'),
    ( 2001 , 'AUDIT', 'MELBOURNE'),
   (3001 ,'MARKETING' , 'PERTH'),
   (4001,  'PRODUCTION' , 'BRISBANE');



   
   INSERT INTO salary_grade
   (grade, min_salary, max_salary)
   VALUES
    ( 1 , 800  , 1300),
    ( 2 , 1301 , 1500),
    ( 3 , 1501 , 2100),
    ( 4 , 2101 , 3100),
    ( 5 , 3101 , 9999);
	


	 INSERT INTO employees
   (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
   VALUES
 ( 68319 , 'KAYLING'  , 'PRESIDENT'  , NULL , '1991-11-18' , '6000.00' ,  NULL   , 1001) ,
 ( 66928 , 'BLAZE'    , 'MANAGER'    , 831  , '1991-05-01' , '2750.00' ,  NULL   , 3001) ,
 ( 67832 , 'CLARE'    , 'MANAGER'    , 831  , '1991-06-09' , '2550.00' ,  NULL   , 1001) ,
 ( 65646 , 'JONAS'    , 'MANAGER'    , 831  , '1991-04-02' , '2957.00' ,  NULL   , 2001) ,
 ( 67858 , 'SCARLET'  , 'ANALYST'    , 564  , '1997-04-19' , '3100.00' ,  NULL   , 2001) ,
 ( 69062 , 'FRANK'    , 'ANALYST'    , 564  , '1991-12-03' , '3100.00' ,  NULL   , 2001) ,
 ( 63679 , 'SANDRINE' , 'CLERK'      , 906  , '1990-12-18' , '900.00'  ,  NULL   , 2001) ,
 ( 64989 , 'ADELYN'   , 'SALESMAN'   , 692  , '1991-02-20' , '1700.00' ,  400.00 , 3001) ,
 ( 65271 , 'WADE'     , 'SALESMAN'   , 692  , '1991-02-22' , '1350.00' ,  600.00 , 3001) ,
 ( 66564 , 'MADDEN'   , 'SALESMAN'   , 692  , '1991-09-28' , '1350.00' , 1500.00 , 3001) ,
 ( 68454 , 'TUCKER'   , 'SALESMAN'   , 692  , '1991-09-08' , '1600.00' ,    0.00 , 3001) ,
 ( 68736 , 'ADNRES'   , 'CLERK'      , 785  , '1997-05-23' , '1200.00' ,  NULL   , 2001) ,
 ( 69000 , 'JULIUS'   , 'CLERK'      , 692  , '1991-12-03' , '1050.00' ,  NULL   , 3001) ,
 ( 69324 , 'MARKER'   , 'CLERK'      , 6783 , '1992-01-23' , '1400.00' ,  NULL   , 1001) ;












                                                         ----- Return complete information about the employees-------



SELECT * FROM employees;
-- Write a SQL query to find the salaries of all employees. Return salary.
SELECT salary FROM employees;
-- Write a SQL query to find the unique designations of the employees. Return job name
SELECT DISTINCT job_name FROM employees;
-- Write a SQL query to list the employees’ name, increased their salary by 15%
SELECT emp_name, new_salary =salary  * 1.15 FROM employees;
-- Write a SQL query to list the employee's name and job name as a format of "Employee & Job"
SELECT emp_name + ' '+ job_name AS "Employee & Job" FROM employees ;
-- Write a SQL query to find those employees with hire date in the format like February 22, 1991. Return employee ID, employee name, salary, hire date.
SELECT emp_id, emp_name, salary,FORMAT(hire_date, 'MMMM dd, yyyy')hire_date  FROM employees ;
-- Write a SQL query to count the number of employees who have total income more than 2200
SELECT COUNT(emp_name) AS "SALARY MORE THAN 2200" FROM employees
WHERE salary> 2200;
-- Write a SQL query to find the unique jobs with their corresponding department id.
SELECT DISTINCT   dep_id , job_name FROM employees;
-- Write a SQL query to find those employees who do not belong to the department 2001. Return complete information about the employees.
SELECT *  FROM employees
WHERE dep_id <> 2001 ;
-- Write a SQL query to find those employees who joined before 1991. Return complete information about the employees
SELECT *  FROM employees
WHERE hire_date < '1991' ;
-- Write a SQL query to calculate the average salary of employees who work as analysts. Return average salary.
SELECT AVG(salary) AS "AVG. SALARY" from employees
WHERE job_name = 'ANALYST';
-- Write a SQL query to find the details of the employees who's name start start with B or end with E
SELECT *  FROM employees
WHERE emp_name LIKE 'B%' OR emp_name LIKE '%E'  ;
-- Write a SQL query to find the details of the employees who's department name start start with B or end with E
SELECT *  FROM employees
WHERE dep_id IN ( SELECT dep_id  FROM department
WHERE dep_name LIKE 'B%' OR dep_name LIKE '%E');
-- Write a SQL query to find the details of the employees who's department location start start with F or end with N 
-- change to start with S or end with E  becouse there is no department location start with F or end with N
SELECT *  FROM employees
WHERE dep_id IN ( SELECT dep_id  FROM department
WHERE dep_location LIKE 'S%' OR dep_location LIKE '%E');
-- Write a SQL query to identify employees whose commissions exceed their salaries. Return complete information about the employees, department location and department name
SELECT e.* ,d.dep_name, d.dep_location FROM employees e, department d
WHERE e.commission > e.salary AND d.dep_id = e.dep_id;
-- Write a SQL query to identify those employees whose salaries exceed 3000 after receiving a 25% salary increase
SELECT emp_name, salary*1.25 AS "+25% salaries exceed 3000" FROM employees
WHERE salary*1.25 >3000;
-- Write a SQL query to find out which employees joined in the month of January. Return complete information about the employees.
SELECT *  FROM employees
WHERE hire_date LIKE '%-01-%';
--OR
SELECT *  FROM employees
WHERE  MONTH(hire_date) = 01;
-- Write a SQL query to separate the names of employees and their managers by the string 'works for'.
SELECT em.emp_name+ '  WORKS FOR  '+mn.emp_name AS "EMP & MAN" FROM employees em, employees mn
WHERE em.manager_id = mn.emp_id ;
--OR
SELECT CONCAT( em.emp_name,'  WORKS FOR  ',mn.emp_name) AS "EMP & MAN" FROM employees em, employees mn
WHERE em.manager_id = mn.emp_id
-- Write a SQL query to find those employees whose designation is ‘CLERK’. Return complete information about the employees.
SELECT *  FROM employees
WHERE job_name = 'CLERK';
-- Write a SQL query to identify employees with more than 27 years of experience. Return complete information about the employees.
--answear:
SELECT * FROM employees
WHERE hire_date <= DATEADD(year, -27, GETDATE());
------------------------------
SELECT *, DATEDIFF(year, hire_date, GETDATE()) as "Years of Experience"
FROM employees
WHERE hire_date <= DATEADD(year, -27, GETDATE());
SELECT *, DATEDIFF(year, hire_date, GETDATE()) as "Years of Experience"
FROM employees
WHERE hire_date >= DATEADD(year, -27, GETDATE());
-- Write a SQL query to find those employees whose salaries are less than 3500. Return complete information about the employees.
SELECT *  FROM employees
WHERE salary < 3500;
-- Write a SQL query to find the employee whose designation is ‘ANALYST’. Return employee name, job name and salary.
SELECT emp_name,job_name,salary  FROM employees
WHERE job_name = 'ANALYST';
-- Write a SQL query to identify those employees who joined the company in 1991. Return complete information about the employees.
SELECT *  FROM employees
WHERE hire_date like '1991%';
--OR
SELECT *  FROM employees
WHERE  YEAR(hire_date)=1991;
-- Write a SQL query to identify those employees who joined the company after 1991. Return complete information about the employees.
SELECT *  FROM employees
WHERE hire_date > '1991-12-31';
-- Write a SQL query to find those employees who joined before 1st April 1991. Return employee ID, employee name, hire date and salary.
SELECT *  FROM employees
WHERE hire_date < '1991-04-01';
-- Write a SQL query identify the employees who do not report to a manager. Return employee name, job name.
SELECT emp_name, job_name  FROM employees
WHERE manager_id IS NULL;
-- Write a SQL query to find the employees who joined on the 1st of May 1991. Return complete information about the employees.
SELECT *  FROM employees
WHERE hire_date = '1991-05-01';
--OR
SELECT *  FROM employees
WHERE DAY(hire_date)= 01 AND MONTH(hire_date) = 05 AND YEAR(hire_date)=1991;
-- Write a SQL query to identify the experience of the employees who work under the manager whose ID number is 68319. Return employee ID, employee name, salary, experience
SELECT emp_id,emp_name,salary, DATEDIFF(year, hire_date, GETDATE()) as "Experience"
FROM employees
WHERE manager_id = 68319;
-- Write a SQL query to find out which employees earn more than 100 per day as a salary. Return employee ID, employee name, salary, and experience.
SELECT emp_id,emp_name,salary, DATEDIFF(year, hire_date, GETDATE()) as "Experience"
FROM employees
WHERE salary/30 > 100;
-- Write a SQL query to identify those employees who retired after 31-Dec-99, completing eight years of service. Return employee name.
SELECT emp_name
FROM employees
WHERE   DATEADD(year, 8,hire_date)>'1999-12-31';
-- Write a SQL query to identify the employees whose salaries are odd. Return complete information about the employee
SELECT *  FROM employees
WHERE salary%2!=0;
-- Write a SQL query to identify employees whose salaries contain only three digits. Return complete information about the employees.
SELECT*
FROM employees
WHERE salary BETWEEN 100 AND 999;
-- Write a SQL query to find those employees who joined in the month of APRIL. Return complete information about the employees
SELECT *  FROM employees
WHERE hire_date LIKE '%-04-%';
SELECT *  FROM employees
WHERE MONTH(hire_date)=04;
-- Write a SQL query to find out which employees joined the company before the 19th of the month. Return complete information about the employees
SELECT *  FROM employees
WHERE DAY(hire_date)<19;
-- Write a SQL query to identify those employees who have been working as a SALESMAN and month portion of the experience is more than 10. Return complete information about the employees.
SELECT * FROM employees
WHERE job_name = 'SALESMAN' AND DATEDIFF(month, hire_date, GETDATE()) > 10;
-- Write a SQL query to find those employees of department id 3001 or 1001 and joined in the year 1991. Return complete information about the employees.
SELECT *  FROM employees
WHERE YEAR(hire_date)=1991 AND (dep_id = 3001 OR dep_id = 1001 ) ;
-- Write a SQL query to find the employees who are working for the department ID 1001 or 2001. Return complete information about the employees.
SELECT *  FROM employees
WHERE (dep_id = 2001 OR dep_id = 1001 ) ;
-- Write a SQL query to find those employees whose designation is ‘CLERK’ and work in the department ID 2001. Return complete information about the employees.
SELECT *  FROM employees
WHERE job_name = 'CLERK' AND (dep_id = 2001  ) ;
-- Write a SQL query to find those employees who are either CLERK or MANAGER. Return complete information about the employees.
SELECT *  FROM employees
WHERE job_name IN ( 'CLERK', 'MANAGER') ;
-- Write a SQL query to identify those employees who joined in any month other than February. Return complete information about the employees.
SELECT *  FROM employees
WHERE MONTH(hire_date)<>02;
-- Write a SQL query to identify the employees who joined the company in June 1991. Return complete information about the employees.
SELECT *  FROM employees
WHERE  MONTH(hire_date) = 06 AND YEAR(hire_date)=1991;
-- Write a SQL query to search for all employees with an annual salary between 24000 and 50000 (Begin and end values are included.). Return complete information about the employees.
SELECT* FROM employees
WHERE salary*12 BETWEEN 24000 AND 50000;
-- Write a SQL query to identify all employees who joined the company on 1st May, 20th February, and 3rd December 1991. Return complete information about the employees.
SELECT *  FROM employees
WHERE (DAY(hire_date)= 01 AND MONTH(hire_date) = 05 AND YEAR(hire_date)=1991)OR (DAY(hire_date)= 03 AND MONTH(hire_date) = 12 AND YEAR(hire_date)=1991)OR (DAY(hire_date)= 20 AND MONTH(hire_date) = 02 AND YEAR(hire_date)=1991);
--or
SELECT *  FROM employees
WHERE hire_date IN ('1991-05-01','1991-02-20','1991-12-03');
-- Write a SQL query to find out which employees are working under the managers 63679, 68319, 66564, or 69000. Return complete information about the employees.
SELECT *  FROM employees
WHERE manager_id IN (63679, 68319, 66564, 69000);
-- Write a SQL query to find those employees who joined in 90's. Return complete information about the employees.
SELECT *  FROM employees
WHERE   YEAR(hire_date)>=1990;
--OR
SELECT *  FROM employees
WHERE   hire_date LIKE '199%';
-- Write a SQL query to find those managers who are in the department 1001 or 2001. Return complete information about the employees.
SELECT *  FROM employees
WHERE   job_name= 'MANAGER' AND (dep_id = 1001 OR dep_id = 2001) ;
-- Write a SQL query to identify employees who joined in the month of FEBRUARY with a salary range of 1001 to 2000 (Begin and end values are included.). Return complete information about the employees.
SELECT *  FROM employees
WHERE  MONTH(hire_date) = 02 AND salary BETWEEN 1001 AND 2000;
-- Write a SQL query to find those employees who joined before or after the year 1991. Return complete information about the employees.
SELECT *  FROM employees
WHERE   YEAR(hire_date)<>1991;
-- Write a SQL query to find employees along with their department details. Return employee ID, employee name, job name, manager ID, hire date, salary, commission, department ID, and department name.
SELECT e.* ,d.dep_name FROM employees e, department d
WHERE d.dep_id = e.dep_id;
-- Write a SQL query to identify those employees who earn 60000 or more per year or do not work as ANALYST. Return employee name, job name, (12*salary) as Annual Salary, department ID, and grade.
SELECT e.emp_name, e.job_name, 12 * e.salary AS "Annual Salary", e.dep_id, s.grade
FROM employees e,salary_grade s
 WHERE (s.min_salary <= e.salary AND s.max_salary >= e.salary) AND( (12 * e.salary >= 60000) OR (e.job_name <> 'ANALYST'));
 ---SHOW GRADE
 SELECT e.emp_name, e.job_name,  e.salary , e.dep_id, s.grade
FROM employees e,salary_grade s
 WHERE (s.min_salary <= e.salary AND s.max_salary >= e.salary);
-- Write a SQL query to identify employees whose salaries are higher than their managers' salaries. Return employee name, job name, manager ID, salary, manager name, manager's salary
SELECT em.emp_name,em.job_name,em.manager_id,em.salary ,mn.emp_name AS "manger name",mn.salary AS "manger salary" FROM employees em, employees mn
WHERE (em.manager_id = mn.emp_id) AND (em.salary >mn.salary) ;
-- Write a SQL query to find those employees whose salary is between 2000 and 5000 (Begin and end values are included.) and location is PERTH. Return employee name, department ID, salary, and commission
SELECT e.emp_name,e.dep_id ,e.salary,e.commission FROM employees e, department d
WHERE (d.dep_id = e.dep_id)AND (e.salary  BETWEEN 2000 AND 5000)AND d.dep_location = 'PERTH' ;
-- Write a SQL query to find the employees whose department ID is 1001 or 3001 and whose salary grade is not 4. They joined the company before 1992-12-31. Return grade, employee name.
 SELECT e.emp_name, s.grade
FROM employees e,salary_grade s
 WHERE (s.min_salary <= e.salary AND s.max_salary >= e.salary) AND (s.min_salary <> 2101)AND (s.max_salary<>3100) AND(e.dep_id = 1001 OR e.dep_id = 3001) AND (hire_date < '1992-12-31') ;
-- Write a SQL query to find those employees whose manager name is JONAS. Return employee id, employee name, job name, manager ID, hire date, salary, department ID, employee name.
SELECT em.emp_id,em.emp_name,em.job_name,em.manager_id,em.hire_date,em.salary ,em.dep_id FROM employees em, employees mn
WHERE (em.manager_id = mn.emp_id) AND mn.emp_name = 'JONAS';
-- Write a SQL query to find the name and salary of the employee FRANK. Salary should be equal to the maximum salary within his or her salary group.
SELECT emp_name,salary  FROM employees , salary_grade s
WHERE   emp_name= 'FRANK' AND (s.grade=4)AND(salary=s.max_salary);
-- Write a SQL query to search for employees who are working either as a MANAGER or an ANALYST with a salary between 2000 and 5000 (Begin and end values are included.) without commissions. Return complete information about the employees.
SELECT *  FROM employees
WHERE   job_name IN ( 'MANAGER', 'ANALYST') AND salary BETWEEN 2000 AND 5000
-- Write a SQL query to search for employees who are working either as a MANAGER or an ANALYST with a salary between 2000 and 5000 (Begin and end values are included.) without commissions. Return complete information about the employees.
-- From the following table, write a SQL query to find the employees who joined in 1991 and whose department location is SYDNEY or MELBOURNE with a salary range of 2000 to 5000. Return employee ID, employee name, department ID, salary, and department location.
SELECT e.dep_id ,e.emp_name,e.salary,d.dep_location FROM employees e, department d
WHERE (d.dep_id = e.dep_id)AND (e.salary  BETWEEN 2000 AND 5000)AND( d.dep_location = 'SYDNEY' OR  d.dep_location = 'MELBOURNE') AND YEAR(hire_date) = 1991 ;
2:47
-- Write a SQL query to find the employees of MARKETING department come from MELBOURNE or PERTH, are in grades 3 ,4, and 5 and have at least 25 years of experience. Return department ID, employee ID, employee name, salary, department name, department location and grade.
SELECT e.dep_id,e.emp_id ,e.emp_name,e.salary,d.dep_name,d.dep_location,s.grade FROM employees e, department d, salary_grade s
WHERE (d.dep_id = e.dep_id) AND (d.dep_name ='MARKETING' )AND (s.min_salary <= e.salary AND s.max_salary >= e.salary) AND(s.grade IN (3, 4, 5))AND ( d.dep_location = 'PERTH' OR  d.dep_location = 'MELBOURNE') AND DATEDIFF(year, e.hire_date, GETDATE())>= 25 ;
-- Write a SQL query to find those employees who are senior to their manager. Return complete information about the employees.
SELECT em.emp_id,em.emp_name,em.job_name,em.manager_id,em.salary,em.hire_date ,mn.emp_name AS "manger name",mn.salary AS "manger salary", mn.hire_date AS "manger hire date" FROM employees em, employees mn
WHERE (em.manager_id = mn.emp_id) AND (em.hire_date < mn.hire_date) ;
-- Write a SQL query to determine which employees have a grade of 4 and a salary between the minimum and maximum. Return all information of each employees and their grade and salary related details
 SELECT e.*, s.*
FROM employees e,salary_grade s
 WHERE (s.min_salary <= e.salary AND s.max_salary >= e.salary) AND s.grade = 4
-- Write a SQL query to find those employees who joined after 1991, excluding MARKER or ADELYN in the departments PRODUCTION or AUDIT. Return employee name.
SELECT e.emp_name FROM employees e, department d
WHERE (d.dep_id = e.dep_id)AND (e.emp_name <>'MARKER' OR e.emp_name <>'ADELYN')AND( d.dep_name IN( 'PRODUCTION','AUDIT')) AND YEAR(hire_date) > 1991 ;
-- Write a SQL query to find the employees and their salaries. Sort the result-set in ascending order by salaries. Return complete information about the employees.
SELECT emp_name, salary FROM employees
ORDER BY  salary;
-- Write a SQL query to list employees in ascending order on department ID and descending order on jobs. Return complete information about the employees.
SELECT * FROM employees
ORDER BY  dep_id ASC, job_name DESC;
-- Write a SQL query to sort the unique jobs in descending order. Return job name.
SELECT DISTINCT job_name FROM employees
ORDER BY   job_name DESC;
-- Write a SQL query to rank the employees according to their annual salary in ascending order. Return employee ID, employee name, monthly salary, salary/30 as Daily_Salary, and 12*salary as Anual_Salary.
SELECT emp_id,emp_name,salary, salary/30 as Daily_Salary,  12*salary as Anual_Salary FROM employees
ORDER BY salary*12;
-- Write a SQL query to find those employees who are either 'CLERK' or 'ANALYST’. Sort the result set in descending order on job_name. Return complete information about the employees.
SELECT * FROM employees
WHERE job_name IN ('CLERK','ANALYST')
ORDER BY  job_name DESC;
-- Write a SQL query to find the department location of employee ‘CLARE’. Return department location.
SELECT d.dep_location FROM employees e, department d
WHERE (d.dep_id = e.dep_id) AND (e.emp_name = 'CLARE');
-- Write a SQL query to find those employees who joined on 1-MAY-91, or 3-DEC-91, or 19-JAN-90. Sort the result-set in ascending order by hire date. Return complete information about the employees.
SELECT * FROM employees
WHERE hire_date IN ('1990-01-19','1991-12-03','1991-05-01')
ORDER BY  hire_date ;
-- Write a SQL query to find those employees who earn less than 1000. Sort the result-set in ascending order by salary. Return complete information about the employees.
SELECT * FROM employees
WHERE salary<1000
ORDER BY  salary ;
-- Write a SQL query to list the employees in ascending order based on salary. Return complete information about the employees.
SELECT * FROM employees
ORDER BY  salary ;
-- Write a SQL query to list the employees in the ascending order by job title and in descending order by employee ID. Return complete information about the employees.
SELECT * FROM employees
ORDER BY  job_name ASC, emp_id DESC ;
-- Write a SQL query to list the unique jobs of department 2001 and 3001 in descending order. Return job name.
SELECT DISTINCT job_name FROM employees
WHERE dep_id IN (2001,3001)
ORDER BY   job_name DESC;
-- Write a SQL query to list all the employees except the PRESIDENT and the MANAGER in ascending order of salaries. Return complete information about the employees.
SELECT * FROM employees
WHERE job_name <> 'PRESIDENT'AND job_name <>'MANAGER'
ORDER BY  salary;
-- Write a SQL query to find the employees whose annual salary is less than $25,000 per year. Sort the result set in ascending order of the salary. Return complete information about the employees.
SELECT * FROM employees
WHERE 12*salary<25000
ORDER BY  salary ;
-- Write a SQL query to list the employees who works as a SALESMAN. Sort the result set in ascending order of annual salary. Return employee id, name, annual salary, daily salary of all the employees.
SELECT emp_id,emp_name,salary, salary/30 as Daily_Salary,  12*salary as Anual_Salary FROM employees
WHERE job_name = 'SALESMAN'
ORDER BY  12*salary;
-- Write a SQL query to list the employee ID, name, hire date, current date and experience of the employees in ascending order on their experiences.
SELECT emp_id,emp_name,hire_date,CONVERT(date, GETDATE()) AS "current date", DATEDIFF(year, hire_date, GETDATE()) as "Experience"
FROM employees
ORDER BY  Experience;
-- Write a SQL query to list the employees in ascending order of designations of those joined after the second half of 1991.
SELECT * FROM employees
WHERE hire_date >= '1991-07-01'
ORDER BY hire_date ;
-- Write a SQL query to find the location of all the employees working in the FINANCE or AUDIT department. Sort the result-set in ascending order by department ID. Return complete information about the employees.
SELECT e.*,d.dep_name,d.dep_location FROM employees e, department d
WHERE (d.dep_id = e.dep_id) AND (d.dep_name IN ('FINANCE','AUDIT'))
ORDER BY e.dep_id ;
-- Write a SQL query to find the employees along with grades in ascending order. Return complete information about the employees.
 SELECT e.*, s.grade
FROM employees e,salary_grade s
 WHERE (s.min_salary <= e.salary AND s.max_salary >= e.salary)
 ORDER BY s.grade;
-- Write a SQL query to find the employees according to the department in ascending order. Return name, job name, department, salary, and grade.
SELECT e.emp_name,e.job_name,d.dep_name,e.salary,s.grade FROM employees e, department d, salary_grade s
WHERE (d.dep_id = e.dep_id) AND (s.min_salary <= e.salary AND s.max_salary >= e.salary)
 ORDER BY d.dep_name;
-- Write a SQL query to select all employees except CLERK and sort the results in descending order by salary. Return employee name, job name, salary, grade and department name.
SELECT e.emp_name,e.job_name,e.salary,s.grade,d.dep_name FROM employees e, department d, salary_grade s
WHERE (d.dep_id = e.dep_id) AND (s.min_salary <= e.salary AND s.max_salary >= e.salary) AND e.job_name<> 'CLERK'
 ORDER BY e.salary DESC;
-- Write a SQL query to find those employees who work in the department 1001 or 2001. Return employee ID, name, salary, department, grade, experience, and annual salary.
SELECT e.emp_id,e.emp_name,e.salary,d.dep_name,s.grade,DATEDIFF(year, hire_date, GETDATE()) as "Experience", 12*salary as Anual_Salary FROM employees e, department d, salary_grade s
WHERE (d.dep_id = e.dep_id) AND (s.min_salary <= e.salary AND s.max_salary >= e.salary) AND (e.dep_id IN (1001 , 2001))
 ORDER BY Experience;
-- Write a SQL query to list the details of the employees along with the details of their departments.
SELECT e.*,d.dep_name,d.dep_location FROM employees e, department d
WHERE (d.dep_id = e.dep_id)
ORDER BY d.dep_name ;
-- Write a SQL query to list the employees who are senior to their MANAGERS. Return complete information about the employees.
SELECT em.emp_id,em.emp_name,em.job_name,em.manager_id,em.salary,em.hire_date ,mn.emp_name AS "manger name",mn.salary AS "manger salary", mn.hire_date AS "manger hire date" FROM employees em, employees mn
WHERE (em.manager_id = mn.emp_id) AND (em.hire_date < mn.hire_date)
ORDER BY em.emp_id ;
-- Write a SQL query to find those employees who work in the department 1001. Sort the result-set in ascending order by salary. Return employee ID, employee name, salary and department ID.
SELECT  emp_id,emp_name,salary,dep_id FROM employees
WHERE dep_id = 1001
ORDER BY   salary;
-- Write a SQL query to find the second highest salary. Return second highest salary.
SELECT  max(salary) AS "second highest salary" FROM employees
where salary<(SELECT  max(salary) FROM employees);
-- Write a SQL query to calculate the average salary and average total remuneration (salary and commission) for each type of job. Return name, average salary and average total remuneration.
SELECT  job_name,AVG(salary) AS "average salary",AVG(salary + commission) AS "average total remuneration" FROM employees GROUP BY job_name;
-- Write a SQL query to calculate the total annual salary distributed across each job in 1991. Return job name, total annual salary.
SELECT  job_name,SUM(12*salary) AS "total annual salary" FROM employees
WHERE YEAR(hire_date) = 1991
GROUP BY job_name;
-- Write a SQL query to list the employee id, name, department id, location of all the employees.
SELECT e.emp_id,e.emp_name,e.dep_id,d.dep_location FROM employees e, department d
WHERE (d.dep_id = e.dep_id)
-- Write a SQL query to find those employees who work in the department ID 1001 or 2001. Return employee ID, employee name, department ID, department location, and department name.
SELECT e.emp_id,e.emp_name,e.dep_id,d.dep_location ,d.dep_name FROM employees e, department d
WHERE (d.dep_id = e.dep_id) AND e.dep_id IN (1001,2001)
-- Write a SQL query to find those employees whose salary is in the range of minimum and maximum salary. Return employee ID, name, salary and grade.
 SELECT e.emp_id,e.emp_name,e.salary, s.grade
FROM employees e,salary_grade s
 WHERE (s.min_salary <= e.salary AND s.max_salary >= e.salary)
 ORDER BY s.grade;
 -- Write a SQL query to create a list of the managers and the number of employees they supervise. Sort the result set in ascending order on manager. Return manager ID and number of employees under them.
SELECT manager_id, COUNT(emp_id) AS "number_of_employees"
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
ORDER BY manager_id ;
-- Write a SQL query to count the number of employees in each designation of a department. Return department id, job name and number of employees.
SELECT dep_id, job_name, COUNT(emp_id) AS "number_of_employees"
FROM employees
GROUP BY dep_id,job_name
ORDER BY dep_id;
-- Write a SQL query to identify the departments in which at least two employees are employed. Return department id, number of employees.
SELECT dep_id, COUNT(emp_id)  AS "number_of_employees"
FROM employees
GROUP BY dep_id
HAVING COUNT(emp_id)>=2
ORDER BY dep_id;
-- Write a SQL query to list the grade, number of employees, and maximum salary of each grade.
SELECT s.grade, COUNT(e.emp_id) AS "number_of_employees", MAX(e.salary) AS "highest employee salary " ,s.max_salary AS "maximum salary in grade"
FROM employees e , salary_grade s
WHERE (s.min_salary <= e.salary AND s.max_salary >= e.salary)
GROUP BY  s.grade,s.max_salary
ORDER BY s.grade;
-- Write a SQL query to identify departments with at least two SALESMEN in each grade. Return department name, grade and number of employees.
SELECT d.dep_name,s.grade, COUNT(e.emp_id) AS "number_of_employees"
FROM employees e , salary_grade s, department d
WHERE (s.min_salary <= e.salary AND s.max_salary >= e.salary) AND (d.dep_id = e.dep_id) AND e.job_name = 'SALESMAN'
GROUP BY  s.grade, d.dep_name
HAVING COUNT(e.emp_id) >= 2
ORDER BY d.dep_name, s.grade;
-- Write a SQL query to identify departments with fewer than four employees. Return department ID, number of employees.
SELECT d.dep_name, COUNT(e.emp_id) AS "number_of_employees"
FROM employees e , department d
WHERE  (d.dep_id = e.dep_id)
GROUP BY   d.dep_name
HAVING COUNT(e.emp_id) < 4
ORDER BY d.dep_name;
-- Write a SQL query to find which departments have at least two employees. Return department name, number of employees.
SELECT dep_name, COUNT(emp_id) AS num_employees
FROM employees
JOIN department ON employees.dep_id = department.dep_id
GROUP BY dep_name
HAVING COUNT(emp_id) >= 2;
-- Write a SQL query to check whether the employees ID are unique or not. Return employee id, number of employees.
SELECT emp_id, count(emp_id) AS "Time repeat"
FROM employees
GROUP BY emp_id;
-- Write a SQL query to find number of employees and average salary. Group the result set on department id and job name. Return number of employees, average salary, department ID, and job name.
SELECT dep_id, job_name,
COUNT(emp_id) as number_of_employees,
AVG(salary) as average_salary
FROM employees
GROUP BY dep_id, job_name;
-- Write a SQL query to identify those employees whose names begin with 'A' and are six characters long. Return employee name.
SELECT emp_name
FROM employees
WHERE emp_name LIKE 'A%'
AND LEN(emp_name) = 6;
--OR
SELECT emp_name
FROM employees
WHERE emp_name LIKE 'A_____';
-- Write a SQL query to find those employees whose name is six characters in length and the third character must be 'R'. Return complete information about the employees.
SELECT *
FROM employees
WHERE LEN(emp_name) = 6 AND SUBSTRING(emp_name, 3, 1) = 'R';
--OR
SELECT *
FROM employees
WHERE emp_name LIKE '__R___';
-- Write a SQL query to find those employees whose name is six characters in length, starting with 'A' and ending with 'N'. Return number of employees.
SELECT COUNT(*)
FROM employees
WHERE LEN(emp_name) = 6 AND emp_name LIKE 'A%N';
--OR
SELECT COUNT(emp_name)
FROM employees
WHERE emp_name LIKE 'A____N';
-- Write a SQL query to find those employees who joined in the month of where the second letter is 'a'. Return number of employees.
SELECT COUNT(hire_date)number_of_employees_joined_in_the_month_of_where_the_second_letter_is_a
FROM employees
WHERE FORMAT(hire_date, 'MMMM') LIKE '_A%';
-- Write a SQL query to find those employees whose names contain the character set 'AR' together. Return complete information about the employees.
SELECT *
FROM employees
WHERE emp_name LIKE '%AR%';
-- Write a SQL query to find those employees who joined in 90's. Return complete information about the employees.
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
-- Write a SQL query to find those employees whose ID not start with the digit 68. Return employee ID, employee ID using trim function.
SELECT emp_id,
  CASE
    WHEN emp_id >= 68000 AND emp_id < 69000 THEN TRIM(LEADING '68' FROM CAST(emp_id AS CHAR))
    ELSE CAST(emp_id AS CHAR)
  END as "68_trim_from_employee_id"
FROM employees;
-- Write a SQL query to find those employees whose names contain the letter 'A’. Return complete information about the employees.
SELECT *
FROM employees
WHERE emp_name LIKE '%A%';
-- Write a SQL query to find those employees whose name ends with 'S' and six characters long. Return complete information about the employees.
SELECT *
FROM employees
WHERE  emp_name LIKE '_____s';
--OR
SELECT *
FROM employees
WHERE LEN(emp_name) = 6 AND emp_name LIKE '%s';
-- Write a SQL query to find those employees who joined in any month, but the month name contain the character ‘A’. Return complete information about the employees.
SELECT *,FORMAT(hire_date, 'MMMM')hire_date
FROM employees
WHERE FORMAT(hire_date, 'MMMM') LIKE '%A%';
-- Write a SQL query to find those employees who joined in any month, but the name of the month contain the character ‘A’ in second position.
SELECT *
FROM employees
WHERE SUBSTRING(LOWER(DATENAME(month, hire_date)), 2, 1) = 'a';