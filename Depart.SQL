CREATE TABLE IF NOT EXISTS DEPARTMENT (
   EMPLOYEE_ID TEXT,
   NAME TEXT,
   DEPARTMENT_ID TEXT,
   MANAGER_ID TEXT,
   SALARY REAL
);

INSERT INTO DEPARTMENT (EMPLOYEE_ID, NAME, DEPARTMENT_ID, MANAGER_ID, SALARY)
   ('100', 'DAVE', '40', '582', 24000),
   ('101', 'PAUL', '41', '626', 17000),
   ('102', 'OBAMA', '42', '626', 9000),
   ('103', 'KELVIN', '43', '582', 4800),
   ('104', 'JAMES', '44', '125', 25000),
   ('105', 'DONALD', '45', '582', 4200),
   ('106', 'MICHELLE', '46', '125', 5000),
   ('107', 'HANNAH', '47', '125', 6000);

SELECT department_id AS "Department Code",
COUNT(*) AS "No of Employees"
FROM DEPARTMENT
GROUP BY department_id;

SELECT department_id, SUM(salary)
FROM DEPARTMENT 
GROUP BY department_id;

SELECT department_id AS "Department Code",
COUNT(*) AS "No of Employees",
SUM(salary) AS "Total Salary"
FROM DEPARTMENT
GROUP BY department_id;

SELECT department_id AS "Department Code",
SUM(salary) AS "Total Salary"
FROM DEPARTMENT
WHERE MANAGER_ID = '105'
GROUP BY department_id;

SELECT department_id, COUNT(*) AS "No of Employees"
FROM DEPARTMENT
GROUP BY department_id
HAVING COUNT(*) > 2;