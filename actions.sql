-- viewAllDepartments
SELECT * FROM department;

-- Mock Data:
INSERT INTO department (department_name) VALUES
('Sales'),
('Engineering'),
('Finance'),
('Human Resources');

-- viewAllRoles
SELECT role.id AS ROLE_ID, role.title AS ROLE_Title, department.department_name AS Department_Name, role.salary AS Salary
FROM role
INNER JOIN department ON role.department_id = department.id;

-- Mock Data:
INSERT INTO role (title, salary, department_id) VALUES
('Sales Manager', 80000, 1),
('Sales Representative', 50000, 1),
('Software Engineer', 90000, 2),
('QA Engineer', 70000, 2),
('Financial Analyst', 75000, 3),
('HR Manager', 85000, 4);

-- viewAllEmployees
SELECT e.id, e.first_name, e.last_name, r.title, d.department_name, r.salary, m.first_name AS manager_first_name, m.last_name AS manager_last_name
FROM employee e
INNER JOIN role r ON e.role_id = r.id
INNER JOIN department d ON r.department_id = d.id
LEFT JOIN employee m ON e.manager_id = m.id;

-- Mock Data:
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
('John', 'Doe', 1, NULL),
('Jane', 'Smith', 2, 1),
('Michael', 'Johnson', 3, NULL),
('Emily', 'Brown', 4, 3),
('David', 'Wilson', 5, NULL),
('Sarah', 'Taylor', 6, NULL);

-- addDepartment
INSERT INTO department (department_name) VALUES ($1);

-- Mock Data:
INSERT INTO department (department_name) VALUES
('Marketing');

-- addRole
INSERT INTO role (title, salary, department_id) VALUES ($1, $2, $3);

-- Mock Data:
INSERT INTO role (title, salary, department_id) VALUES
('Marketing Manager', 90000, 5);

-- addEmployee
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ($1, $2, $3, $4);

-- Mock Data:
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
('Robert', 'Davis', 7, NULL);

-- updateEmployeeRole
UPDATE employee SET role_id = $1 WHERE id = $2;

-- Mock Data:
UPDATE employee SET role_id = 2 WHERE id = 4;