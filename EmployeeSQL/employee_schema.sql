CREATE TABLE titles (
    emp_title VARCHAR(30)   NOT NULL,
    title VARCHAR(30)   NOT NULL,
    PRIMARY KEY (
        emp_title
     )
);

SELECT * FROM titles


CREATE TABLE employees (
    emp_no int   NOT NULL,
	emp_title VARCHAR (30) NOT NULL,
    birth_date date   NOT NULL,
    first_name VARCHAR(30)   NOT NULL,
    last_name VARCHAR(30)   NOT NULL,
    sex VARCHAR(30)   NOT NULL,
    hire_date date   NOT NULL,
    
    PRIMARY KEY (
        emp_no
     ),
     FOREIGN KEY(emp_title) REFERENCES titles (emp_title)
);

SELECT * FROM employees

CREATE TABLE departments (
    dept_no VARCHAR(30)   NOT NULL,
    dept_name VARCHAR(30)   NOT NULL,
    PRIMARY KEY (
        dept_no
     )
);



CREATE TABLE dept_employees (
    employee_no int   NOT NULL,
    dept_no VARCHAR(30)   NOT NULL,
    PRIMARY KEY (
        employee_no, dept_no
     )
);



CREATE TABLE dept_managers (
    dept_no VARCHAR(30)   NOT NULL,
    employee_no int   NOT NULL,
    PRIMARY KEY (
        dept_no, employee_no
     )
);



CREATE TABLE salaries (
    employee_no int   NOT NULL,
    salary int   NOT NULL,
    FOREIGN KEY(employee_no) REFERENCES employees (emp_no)

);



