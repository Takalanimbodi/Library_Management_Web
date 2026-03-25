# Library Management System (LMS)

A web-based Library Management System for managing books, authors, loans, fines, and users.  
Built with **Node.js, Express.js, MySQL**, and **plain JavaScript frontend**.

---

## Features

- User registration and login (admin & student roles)
- Add, update, and manage books
- Add authors and link authors to books
- Reserve, loan, and return books
- Record and pay fines
- Book search (autocomplete)
- Role-based access (Admin vs Student)
- Secure password hashing (bcrypt)
- Input validation and error handling

---

## Tech Stack

- **Backend**: Node.js, Express.js, MySQL2, bcrypt, helmet
- **Frontend**: HTML, CSS, JavaScript (Vanilla)
- **Database**: MySQL

## Requirements

- Node.js >= 18.x
- MySQL server
- npm (Node Package Manager)

---

## Installation
1. Clone the Repository 
git clone https://github.com/yourusername/library-management-Web.git 
cd library-management-Web 
2. Install Dependencies 
Install all required Node.js packages using npm. 
npm install 
This installs important packages such as: 
● express – for building the backend server 
● mysql2 – for connecting the application to the MySQL database 
● bcrypt – for password hashing 
● dotenv – for managing environment variables 
3. Setup the Database 
1. Open MySQL Workbench or any MySQL client. 
2. Create a new database: 
CREATE DATABASE library_db; 
3. Import the SQL schema file: 
SOURCE database/schema.sql; 
This will create the required tables : 
● users 
● book 
● Author 
● book_author 
● loans 
● reservations 
● reservation_status 
● Category 
● fines 
4. Configure Environment Variables 
Create a .env file in the root folder. 
Example configuration: 
DB_HOST=localhost 
DB_USER=root 
DB_PASSWORD=yourpassword 
DB_NAME=library_db 
PORT=3000 
5. Start the Server 
Run the application using: 
node index.js 
The application will start on: 
http://localhost:3000


## Troubleshooting
Below are common issues that may occur when running the system and how to 
resolve them. 
Database Connection Error 
Error: 
ER_ACCESS_DENIED_ERROR: Access denied for user 
Solution: 
● Verify the database username and password in the .env file. 
● Ensure MySQL server is running. 
Example: 
DB_USER=root 
DB_PASSWORD=yourpassword 
Server Port Already in Use 
Error: listen EADDRINUSE: address already in use 
Solution: 
● Change the port in the .env file: 
PORT=3001 
or stop the process currently using the port. 
Module Not Found 
Error: Cannot find module 'express' 
Solution: 
Run: 
npm install 
This installs all required project dependencies. 
Database Not Found 
Error: 
ER_BAD_DB_ERROR: Unknown database 
Solution: 
Create the database manually in MySQL: 
CREATE DATABASE library_db; 
Login Issues 
Possible causes: 
● Password hashing mismatch 
● Incorrect username
