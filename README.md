# Employee Management System 🚀💼

---

## Introduction

The Employee Management System is a dynamic web application tailored for organizations seeking a hassle‐free solution to manage their workforce. With a clean interface and robust functionality, this system allows administrators to add, update, and view details of both permanent and temporary employees. It also provides modules for user management, payroll processing, and training management to cover all aspects of employee administration.

---

## Features

- **Add Employee**  
  Easily add new employees with separate modules for permanent and temporary staff.

- **Employee Details Management**  
  View, search, and update existing employee information in a user-friendly interface.

- **User Management**  
  Manage user accounts and access controls through dedicated modules.

- **Payroll Management**  
  Process and update salary details, add new accounts, and handle employee payments seamlessly.

- **Training Module**  
  Schedule and manage employee training sessions with clear tracking of progress.

- **Responsive Design**  
  Enjoy a consistent and intuitive experience on various devices, thanks to Bootstrap and jQuery integration.

---

## Requirements

- **Java Development Kit (JDK)** version 8 or higher.
- **Apache Tomcat** or another compatible servlet container supporting Servlet 3.0+.
- **JSP/Servlet Support** for dynamic content rendering.
- **Bootstrap and jQuery** for a modern, responsive UI (loaded via CDN).
- **Database Setup** (such as MySQL) to store employee and payroll data.

---

## Installation

1. **Clone the Repository**  
   Run the following command in your terminal:  
   git clone https://github.com/IT22052124/Employee-Managment-System.git

2. **Import the Project**  
   Open the project in your favorite IDE (e.g., Eclipse, IntelliJ IDEA) that supports Java web projects.

3. **Configure the Server**  
   - Ensure Apache Tomcat (or your chosen servlet container) is installed and properly configured.
   - Add the project to your server configuration.

4. **Build & Deploy**  
   - Compile the project using your IDE or build tool (such as Maven if configured).
   - Deploy the generated WAR file to your servlet container.

5. **Database Setup**  
   - Update configuration files (such as the web.xml or corresponding DAO configuration) with your database connection details.
   - Initialize the database schema if required.

---

## Usage

- **Launch the Application**  
  Open your web browser and navigate to:  
  http://localhost:8080/EmployeeManagmentSystem

- **Navigation**  
  Use the sidebar menu to access different modules:
  - **Add Employee:** Add new employees by selecting either the permanent or temporary option.
  - **Employee Details:** Review and manage current employee records.
  - **User Details:** Handle user account management aspects.
  - **Payroll:** Process salary updates, add accounts, and perform payment operations.
  - **Training:** Schedule or remove training sessions.

- **Search and Dynamic Updates**  
  The application includes dynamic search functionality powered by AJAX calls (e.g., search/EmployeeTable.jsp and search/TemporaryEmpList.jsp) to quickly locate employee records.

---

## Configuration

- **Database Connections**  
  Update your database connection strings and credentials in the configuration files or within the DAO classes as per your environment.

- **Server Settings**  
  Modify server-specific settings in the web.xml file to match your deployment environment.

- **Frontend Resources**  
  The application relies on Bootstrap and jQuery loaded via CDN. For offline use, replace these links with local copies.

- **Customization**  
  Further modify UI components or backend logic as needed to tailor the system to your organization’s requirements.

---

## Contributing

We welcome community contributions! To contribute:

- **Fork the Repository:** Create your personal fork.
- **Create a Feature Branch:** Isolate your commits by using a separate branch.
- **Commit Your Changes:** Follow best practices and add meaningful commit messages.
- **Submit a Pull Request:** Explain your changes and improvements clearly.
- **Discuss Major Changes:** For significant updates, open an issue first to discuss your approach.
- **Keep Documentation Updated:** Ensure any changes in functionality are reflected in the README and other documentation.

---

Happy coding!
