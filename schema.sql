-- *Create content manager database, drop if it already exists to sanitize the data.
DROP DATABASE IF EXISTS content_manager_db;
CREATE DATABASE content_manager_db;

-- *Connect to content manager database.
\c content_manager_db;

-- *Create department table.
-- *Set ID as primary key.
-- *Add department_name row to the table.
CREATE TABLE department (
  id SERIAL PRIMARY KEY,
  department_name VARCHAR(30) UNIQUE NOT NULL
);

-- *Create role table.
CREATE TABLE role (
  id SERIAL PRIMARY KEY,
  title VARCHAR(30) UNIQUE NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INTEGER NOT NULL,
  FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE SET NULL
);

-- *Create employee table.
CREATE TABLE employee (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER NOT NULL,
  manager_id INTEGER,
  FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL,
  FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);

-- *Call the seed.sql file to add mock data into the database. --
--\i seed.sql

-- *Query to retrieve employee name, department name, and role. --
SELECT 
  employee.first_name, 
  employee.last_name,
  department.department_name,
  role.title
FROM 
  employee
  JOIN role ON employee.role_id = role.id
  JOIN department ON role.department_id = department.id;