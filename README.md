User Management Dashboard (Servlet + JSP)
Project Overview

This is a basic web application built using Java Servlets and JSP, which allows users to add and delete user information in a simple in-memory list.
It demonstrates CRUD (Create, Delete) operations without using a database, making it ideal for learning Servlets, JSP, and basic web forms.

Features

Add User:
Users can add their Name, Email, Date of Birth, and Password via a web form.

View Users:
Displays a table of all added users with their details.

Delete User:
Each user in the table can be deleted instantly using the Delete button.

In-memory storage:
User data is stored in an ArrayList within the servlet, so no database setup is required.

Project Structure
UserManagement/
│
├── src/
│   └── com.serveletFirst/
│       ├── Mainservlet.java      # Servlet handling add & delete operations
│       └── User.java             # User model class
│
├── WebContent/
│   ├── index.jsp                 # Main JSP page with form and table
│   └── CSS/
│       └── Style.css             # Styling for the form and table
│
└── README.md                     # Project documentation

Getting Started
Prerequisites

Java JDK installed (preferably Java 8+)

Eclipse IDE for Java EE Developers or any Servlet-compatible IDE

Apache Tomcat (or any Servlet container)

Steps to Run

Open Eclipse and import the project:

File → Import → Existing Projects into Workspace → Select project folder.

Ensure the Tomcat server is configured in Eclipse.

Deploy the project to the server:

Right-click project → Run As → Run on Server → Choose Tomcat.

Open your browser and navigate to:

[http://localhost:8084/servletFirst/Mainservlet]


Use the form to add users, and the table will display the added users.

Click Delete to remove any user from the list.

Key Points

This project does not use a database; data will be lost when the server stops.

Designed for learning purposes: understanding Servlets, JSP, forms, request handling, and simple CRUD.

The users list is maintained in a static ArrayList in Mainservlet.java.

Future Enhancements

Integrate a database (MySQL, PostgreSQL) to persist user data.

Add user validation, such as unique email check.

Implement edit/update functionality for users.

Improve UI using Bootstrap or CSS frameworks.

Author

Your Name – Basic Java Web Project with Servlets and JSP
<img width="1544" height="822" alt="image" src="https://github.com/user-attachments/assets/0c0dc09a-55c8-498b-855c-b11e78d65712" />

