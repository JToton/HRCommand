# HRCommand

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Description

This Employee Management System is a command-line application that allows business owners to efficiently manage and organize their company's departments, roles, and employees. Built using Node.js, Inquirer, and PostgreSQL, this application provides a user-friendly interface for viewing and updating essential employee information.

## Table of Contents

- [Screenshot](#screenshot)
- [Walkthrough Link](#walkthrough-link)
- [Walkthrough](#walkthrough)
- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Contributing](#contributing)
- [License](#license)
- [Questions](#questions)
- [Citations](#citations)

## Screenshot

![Screenshot](/images/image.png)

## Walkthrough Link

- [https://youtu.be/lQCZQZPEd4k/]

## Walkthrough

<video src="./video/Demonstration.mp4" controls width="100%"></video>

## Installation

1. Clone the repository:
2. Navigate to the project directory:
3. Create or ensure that a package.json and package-lock.json are present.
4. Run "npm init" if necessary.
5. Use the command "npm install".
6. Install the dependencies ("inquirer": "^8.2.4","pg": "^8.11.5", "readline-sync": "^1.4.10"):
7. Set up the Postgres SQL database:

- Create a new database for the application
- Within the db folder there is a schema.sql file.
- Open schema.sql within an integrated terminal.
- Login to postgres via "psql -U postgres".
- Enter the passphrase: "password".
- run the schema.sql file via "\i schema.sql".
- There is a file called seed.sql.
- This file will automatically run when schema.sql is ran.
- This will seed the database with mock data generated via AI.
- Exit out of postgres login and database connection via "\q" or "quit"

8. Run the application:

- Open index.js within an integrated terminal.
- Enter the command "node index.js" to start the command line application.

## Usage

1. Upon starting the application, you will be presented with a menu of options.
2. Select the desired action from the menu:

- View all departments
- View all roles
- View all employees
- Add a department
- Add a role
- Add an employee
- Update an employee role

3. Follow the prompts to enter the required information for each action.
4. The application will update the database accordingly and display the results.
5. Continue selecting actions from the menu until you choose to exit the application.

## Features

- View all departments, roles, and employees in formatted tables.
- Add new departments, roles, and employees to the database.
- Update an employee's role.
- User-friendly command-line interface using Inquirer.
- Persistent data storage using PostgreSQL.

## Technologies Used

- Node.js
- Inquirer
- PostgreSQL

## Contributing

Contributions are not welcome. This is a graded classroom assignment that is an assesment of my skills regarding the usage of Node.js, Inquirer, and Postgres / SQL. If you have any suggestions, bug reports, or feature requests, please open an issue or leave a comment for my future knowledge base and usage.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Questions

If you have any questions about HRCommand, you can reach me at Jake_Toton@live.com. You can find more of my work at [Jtoton](https://github.com/Jtoton/).

## Citations

1. Node.js. (n.d.). Node.js. Retrieved from https://nodejs.org/
2. Inquirer. (n.d.). Inquirer.js. Retrieved from https://www.npmjs.com/package/inquirer
3. PostgreSQL. (n.d.). PostgreSQL: The World's Most Advanced Open Source Relational Database. Retrieved from https://www.postgresql.org/
4. Open Source Initiative. (n.d.). The MIT License. Retrieved from https://opensource.org/licenses/MIT
5. ChatGPT. (n.d.). https://chatgpt.com/

- Used to generate mock employee data for the seeding of the database.

6. Module 12 challenge. (n.d.). https://bootcampspot.instructure.com/courses/5301/assignments/74789

- Canvas assignment page which housed the assignment description, requirments and acceptance criteria.
- This additionally provided the database schema to use including the tables and setup.

7. Course instructors and T.A.'s provided assistance, materials and various links located within our classroom slack channels.
8. SQL Tutorial. (n.d.). https://www.w3schools.com/sql/
9. Node.js NPM. (n.d.). https://www.w3schools.com/nodejs/nodejs_npm.asp
