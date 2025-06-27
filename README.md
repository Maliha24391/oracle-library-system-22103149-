| University Library Management System

*Database (MySQL/Oracle/SQL Server) Course – Final Project*

## 📋 Project Overview

This project serves as the final deliverable for the Database course, presenting a fully functional University Library Management System developed using Oracle Database, as outlined in the course requirements.

### Project Objectives

This project highlights my ability to:

* 📚 Design and implement a robust database solution tailored for library operations
* 👥 Apply normalization techniques and relational database modeling effectively
* 🔄 Write complex SQL queries and implement PL/SQL programming logic
* 💰 Enforce security measures and optimize performance within the database

### Learning Outcomes Demonstrated

* *Database Modeling*: Utilized ER diagrams and normalization up to 3NF
* *SQL Expertise*: Proficiently used DML, DDL, DCL, and TCL commands
* *PL/SQL Skills*: Developed stored procedures, functions, and triggers for automation
* *Database Management*: Handled user roles, access control, and indexing

## 🎓 Completed Assignment Components

### Part 1: Database Schema Design & Initialization (15 Marks)

* ✅ *Task 1.1*: Defined essential tables (BOOKS, MEMBERS, TRANSACTIONS) with constraints
* ✅ *Task 1.2*: Populated tables with sample data: 20 books, 15 members, and 25 transactions

### Part 2: Core SQL Operations (20 Marks)

* ✅ *Task 2.1*: Executed data retrieval queries (e.g., available books, overdue users, top borrowers)
* ✅ *Task 2.2*: Performed data updates (e.g., fine management, user insertion, transaction archiving)

### Part 3: Complex SQL Queries (25 Marks)

* ✅ *Task 3.1*: Applied multiple JOIN types (INNER, LEFT, SELF, CROSS)
* ✅ *Task 3.2*: Used subqueries for analytical tasks (e.g., high fines, active users)
* ✅ *Task 3.3*: Implemented aggregate and window functions for reports

### Part 4: PL/SQL Development (25 Marks)

* ✅ *Task 4.1*: Developed the `ISSUE_BOOK` procedure
* ✅ *Task 4.2*: Created the `CALCULATE_FINE` function
* ✅ *Task 4.3*: Added trigger for inventory updates on book return

### Part 5: Admin & Optimization (15 Marks)

* ✅ *Task 5.1*: Managed user roles (e.g., librarian, student access)
* ✅ *Task 5.2*: Boosted performance with indexing and plan analysis

## 🛠️ Tools & Technologies

| Component   | Technology               |
| ----------- | ------------------------ |
| DBMS        | Oracle Database          |
| Language    | SQL (DML, DDL, DCL, TCL) |
| Procedural  | PL/SQL                   |
| Admin Tools | Oracle Admin Utilities   |

## ⭐ Highlighted Features

### 1. Complete Data Control

#### 📖 Book Handling

* Maintains book metadata: title, author, publisher, ISBN
* Categorization by genre and inventory control
* Tracks real-time available copies

#### 👤 Member Services

* Supports various member types: students, faculty, staff
* Captures detailed contact information
* Tracks membership duration and type

#### 📝 Transaction Monitoring

* Tracks all book issue and return operations
* Stores issue, return, and due dates
* Calculates and records fines accurately

### 2. Rich Query Capabilities

#### Data Lookup

* Check live availability of books
* Identify overdue or delayed returns
* Analyze borrowing frequency
* Monitor user borrowing history

#### Data Modifications

* Fine updates based on due delays
* Seamless member onboarding
* Archival of old transactions

#### JOIN Usage

* *INNER JOIN*: Current borrowings per member
* *LEFT JOIN*: Full list of books and their history
* *SELF JOIN*: Referral or membership tracking
* *CROSS JOIN*: Tabular analytics combinations

#### Subqueries

* Pinpoint highly active borrowers
* Detect members with major fines
* Analyze least borrowed books
* Apply conditional filters and orderings

#### Reports & Stats

* *Aggregate Functions*: COUNT, AVG, SUM for metrics
* *Window Functions*: RANK(), NTILE(), LEAD(), LAG() for insights
* *Data Trends*: Identify long-term borrowing behavior

### 3. PL/SQL Logic Automation

#### 📚 ISSUE\_BOOK Procedure

\-- Streamlined book issuing workflow

* Validates stock before issuing
* Adds transaction entry automatically
* Decreases available copy count
* Includes exception handling

#### 💰 CALCULATE\_FINE Function

\-- Calculates fines dynamically

* Receives transaction ID
* Determines overdue days and calculates ₹5/day
* Returns total fine due

#### 🔄 UPDATE\_AVAILABLE\_COPIES Trigger

\-- Ensures real-time stock updates

* Triggered on successful returns
* Restores available\_copies value
* Keeps inventory consistent

### 4. Administrative Functions

#### 🔐 Access & Privileges

* *Role-based privileges*:

  * `librarian`: Complete control
  * `student_user`: View-only on books
* Permissions assigned based on role

#### ⚡ System Optimization

* Indexed common filter columns
* Reviewed execution plans for bottlenecks
* Applied improvements to reduce query load

## 📁 Submission Contents

Folder: `oracle-library-system-[student-id]/`

```
├── README.md                 → This guide/documentation
├── sql/
│   ├── setup.sql            → Part 1: Table creation, constraints, seed data
│   ├── queries.sql          → Part 2 & 3: SQL query implementations
│   ├── plsql.sql            → Part 4: PL/SQL stored code blocks
│   └── admin.sql            → Part 5: User creation, roles, indexing
```

### File Overview

#### setup.sql

* Builds schema with all necessary tables
* Adds relevant constraints (PK, FK, checks)
* Inserts diverse sample records
* Establishes relational links

#### queries.sql

* Covers both basic and advanced SQL queries
* Includes inline comments for clarity
* Explains what output to expect
* Notes optimization hints

#### plsql.sql

* Contains procedural code for library operations
* Describes parameters and return values clearly
* Implements business logic via triggers and procedures

#### admin.sql

* Grants user roles and access privileges
* Indexes columns based on performance needs
* Applies administrative SQL commands
* Documents security configurations

## 🚀 Execution Instructions

1. *Connect to Oracle DB:*

   ```sql
   sqlplus username/password@your_database
   ```

2. *Run the following scripts sequentially:*

   ```sql
   @sql/setup.sql      -- Sets up the database and sample data  
   @sql/queries.sql    -- Executes core and advanced queries  
   @sql/plsql.sql      -- Creates procedures and triggers  
   @sql/admin.sql      -- Applies security and indexing
   ```

## 📊 Database Schema Summary

### Core Tables

* **BOOKS**: Details include book\_id, title, author, publisher, year, isbn, category, total/available copies, price
* **MEMBERS**: Stores member\_id, name, email, contact, address, join date, type
* **TRANSACTIONS**: Tracks transaction\_id, member\_id, book\_id, issue/return dates, fine, and status

## 📝 Requirement Fulfillment

The system meets all the criteria set in the assignment:

### Sample Records

* 20 books across various categories
* 15 members from different user roles
* 25 transactions, including overdue and returned books

### Key Query Functions

* Books currently checked out
* Overdue return records
* Most borrowed book statistics
* Members with recurring delays
* ₹5/day fine calculations post due date

### PL/SQL Features

* `ISSUE_BOOK`: Issues books with validations
* `CALCULATE_FINE`: Computes late fees
* Return trigger: Updates available books in real-time

### Security & Access Roles

* `librarian`: Complete access
* `student_user`: Read-only access to book info
