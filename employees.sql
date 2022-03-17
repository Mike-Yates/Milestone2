--
-- Employees Database for SQL Homework
-- CS 4750: Database Systems
-- 
-- Import into phpMyAdmin in the following way:
--   1. Log into phpMyAdmin
--   2. Click on your database name on the left-hand side
--   3. Go to the "SQL" table
--   4. Copy all of the code in this file, paste it into the SQL tab. Then, click "Go"
--   5. Click back onto your database name and check the three tables were added
--   6. (Sanity check) Execute a simple query in the "SQL" tab to ensure tables are there
--

CREATE TABLE IF NOT EXISTS HW_emp ( -- [Employee Table]
	empno INT NOT NULL PRIMARY KEY, -- Primary Key of this table
	ename VARCHAR(10) NOT NULL,
	job VARCHAR(10) NOT NULL, -- job title e.g. 'Clerk' (note: can be 'Manager') 
	mgr INT NULL, -- who is the manager of *this* employee 
	hiredate DATE NOT NULL, -- Date type takes format: '2015-11-18'
	sal INT NOT NULL,  -- salary
	comm INT NOT NULL, -- commission, will be 0 if none
	deptno INT NOT NULL
);

CREATE TABLE IF NOT EXISTS HW_dept ( -- [Department Table]
	deptno INT NOT NULL PRIMARY KEY, -- Primary Key of this table
	dname VARCHAR(10) NOT NULL,
	loc VARCHAR(10) NOT NULL -- location (town)
);

CREATE TABLE IF NOT EXISTS HW_salgrade ( -- [Salary Grade Table]; including low & high range of salary
       grade INT NOT NULL PRIMARY KEY, -- Primary Key of this table
       losal INT NOT NULL,   
       hisal INT NOT NULL
);


-- Inserting values into the tables 
INSERT INTO HW_emp VALUES (7369, 'Smith' ,  'Clerk'    , 7902, '2002-12-17' , 1200, 0, 20);
INSERT INTO HW_emp VALUES (7499, 'Allen' ,  'Salesman' , 7698, '2003-02-20' , 2000, 500, 30);
INSERT INTO HW_emp VALUES (7521, 'Ward'  ,  'Salesman' , 7698, '2003-02-22' , 1650, 800, 30);
INSERT INTO HW_emp VALUES (7566, 'Jones' ,  'Manager'  , 7839, '2003-04-02'  , 3375, 0, 20);
INSERT INTO HW_emp VALUES (7654, 'Martin',  'Salesman' , 7698, '2003-09-28' , 1650, 1400, 30);
INSERT INTO HW_emp VALUES (7698, 'Blake' ,  'Manager'  , 7839, '2003-05-01'  , 3250, 0, 30);
INSERT INTO HW_emp VALUES (7782, 'Clark' ,  'Manager'  , 7839, '2003-06-09'  , 2850, 0, 10);
INSERT INTO HW_emp VALUES (7788, 'Scott' ,  'Analyst'  , 7566, '2002-06-27' , 3500, 0, 20);
INSERT INTO HW_emp VALUES (7839, 'King'  ,  'President', NULL, '2003-11-17' , 6500, 0, 10);
INSERT INTO HW_emp VALUES (7844, 'Turner',  'Salesman' , 7698, '2003-09-08'  , 1900, 0, 30);
INSERT INTO HW_emp VALUES (7876, 'Adams' ,  'Clerk'    , 7788, '2002-07-31' , 1500, 0, 20);
INSERT INTO HW_emp VALUES (7900, 'James' ,  'Clerk'    , 7698, '2003-12-03'  , 1350, 0, 30);
INSERT INTO HW_emp VALUES (7902, 'Ford'  ,  'Analyst'  , 7566, '2003-12-03'  , 3500, 0, 20);
INSERT INTO HW_emp VALUES (7934, 'Miller',  'Clerk'    , 7782, '2003-01-23',  1700, 0, 10);

INSERT INTO HW_dept VALUES (10, 'Accounting', 'New York'); -- Clark is the manager
INSERT INTO HW_dept VALUES (20, 'Research', 'Dallas');     -- Jones is the manager
INSERT INTO HW_dept VALUES (30, 'Sales', 'Chicago');       -- Blake is the manager
INSERT INTO HW_dept VALUES (40, 'Operations', 'Boston');

INSERT INTO HW_salgrade VALUES (1, 1100, 1600);
INSERT INTO HW_salgrade VALUES (2, 1601, 1800);
INSERT INTO HW_salgrade VALUES (3, 1801, 2900);
INSERT INTO HW_salgrade VALUES (4, 2901, 3900);
INSERT INTO HW_salgrade VALUES (5, 3901,10000);
