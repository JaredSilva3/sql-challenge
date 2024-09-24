# SQL Challenge

## Overview
This project is all about working with a SQL database. The goal was to import employee data from CSV files into a PostgreSQL database, set up the tables and relationships, and then run a bunch of queries to analyze the data.

## How to Run the SQL Scripts
1. Clone this repo to your local machine.
2. Open up pgAdmin (or any SQL client that works with PostgreSQL).
3. Load the `.sql` files into your SQL editor.
4. Run the scripts to create the tables, import the data, and execute the queries.

## ERD (Entity Relationship Diagram)
I used QuickDBD to create the ERD for this project. The diagram shows how the tables are related, with details like primary keys, foreign keys, and relationships between employees, departments, salaries, and titles.

## Database Structure
Here's a breakdown of the tables used in the project:

- **employees**: This table stores employee details like employee number, name, date of birth, sex, and hire date.
- **departments**: Lists all departments and their IDs.
- **salaries**: Holds salary info for each employee.
- **titles**: Lists job titles held by employees.
- **dept_emp**: Tracks which employees belong to which departments.
- **dept_manager**: Keeps track of department managers.

The tables are connected using primary and foreign keys. For example, the `emp_no` in the `employees` table is used in `salaries`, `dept_emp`, and `dept_manager` to link employee information across the database.

## SQL Queries
The queries I ran as part of the analysis include:
- Listing employee names and salaries.
- Finding employees hired in 1986.
- Listing managers and their departments.
- Finding employees in specific departments.
- Counting how many employees share the same last name.

## Challenges I Faced
One of the main challenges was aligning the structure of the CSV files with the database schema, especially when it came to column order and data types. After some troubleshooting, I manually adjusted the columns and ensured the data types matched before importing everything into PostgreSQL.

## Final Thoughts
Overall, this project was a great exercise in setting up a relational database, creating table schemas, and running SQL queries for real-world data analysis. It was a fun (and sometimes frustrating) learning experience!

