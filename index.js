const inquirer = require("inquirer");
const { Client } = require("pg");

// Create a new PostgreSQL client
const client = new Client({
  user: "postgres",
  host: "localhost",
  database: "content_manager_db",
  password: "Gamer93!",
  port: 5432, // Default PostgreSQL port
});

async function promptUser() {
  const { action } = await inquirer.prompt([
    {
      type: "list",
      name: "action",
      message: "What would you like to do?",
      choices: [
        "View all departments",
        "View all roles",
        "View all employees",
        "Add a department",
        "Add a role",
        "Add an employee",
        "Update an employee role",
        "Exit",
      ],
    },
  ]);

  switch (action) {
    case "View all departments":
      console.log("You have selected to view all departments.");
      await viewAllDepartments();
      break;
    case "View all roles":
      console.log("You have selected to view all roles.");
      break;
    case "View all employees":
      console.log("You have selected to view all employees.");
      break;
    case "Add a department":
      console.log("You have selected to add a department.");
      break;
    case "Add a role":
      console.log("You have selected to add a role.");
      break;
    case "Add an employee":
      console.log("You have selected to add an employee.");
      break;
    case "Update an employee role":
      console.log("You have selected to update an employee role.");
      break;
    case "Exit":
      client.end(); // Properly end the client connection
      process.exit();
  }

  promptUser();
}

// Function to view all departments
async function viewAllDepartments() {
  try {
    const result = await client.query("SELECT * FROM department");
    console.table(result.rows);
  } catch (err) {
    console.error("Error viewing departments:", err);
  }
}

// Connect to the database and start the prompt
client
  .connect()
  .then(() => {
    console.log("Connected to the database");
    promptUser();
  })
  .catch((err) => {
    console.error("Connection error", err.stack);
  });
