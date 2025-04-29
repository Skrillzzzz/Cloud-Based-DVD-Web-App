# ☁️ Cloud-Based DVD Web App + Serverless Password Validator

This project involves two main components:
1. **Cloud-Based DVD Web App** – A Java web app deployed in the cloud with a MySQL database to manage DVD-related data.  
2. **Serverless Password Strength Validator** – An AWS Lambda function written in Python to validate password strength.

---

## 🎓 Project Overview

The Cloud-Based DVD Web App enables users to manage DVD collections via a secure and interactive Java-based interface, backed by a MySQL database hosted on AWS RDS and deployed to EC2.

The Serverless Password Strength Validator is a lightweight function running on AWS Lambda that checks user passwords for strength and offers real-time feedback based on custom logic.

---

## 🚀 Tech Stack

### DVD Web App
- **Language:** Java  
- **Database:** MySQL (hosted on AWS RDS)  
- **Deployment:** AWS EC2  
- **Packaging:** `.war` file for deployment

### Password Strength Validator
- **Language:** Python  
- **Platform:** AWS Lambda  
- **Trigger:** API Gateway (for HTTP access, optional)

---

## 🛠️ Setup Instructions

### 📀 DVD Web App


#### 1. Clone the Repository:
   ```
   git clone https://github.com/Skrillzzzz/Cloud-Based-DVD-Web-App.git
   cd Cloud-Based-DVD-Web-App/DVDapp
   ```
#### 2. Set Up the MySQL Database:
- Import the `dvddb_setup.sql` file located in the `DVDapp/` directory into your MySQL server to create the necessary tables and populate sample data.
- Make sure to configure your database user credentials and connection string appropriately in your Java application or deployment environment.

#### 3. Deploy the `.war` File:
- Deploy the `dvdWebApp.war` file to a servlet container such as Apache Tomcat hosted on an AWS EC2 instance.
- Ensure your EC2 instance is configured with the correct security group rules to allow web access (port 80/443).
- Update the database connection parameters inside the deployed application if required.

### 🔐 AWS Lambda Password Validator
#### Deploy the AWS Lambda Password Validator:
- Navigate to the `PasswordStrengthValidator/` directory.
- Use the AWS Management Console or CLI to create a new Lambda function.
- Upload `lambda_function.py` as the function code.
- Set the runtime to Python 3.x and assign a basic execution role.
- (Optional) Set up an API Gateway trigger if you want to expose the Lambda function as a web endpoint.

---
## 🔑 Requirements

### For the DVD Web App:
- Java Development Kit (JDK) installed
- Apache Tomcat (or similar servlet container)
- MySQL Server

### For AWS Lambda:
- Python 3.x
- AWS CLI configured with your credentials
- (Optional) `boto3` or other libraries if your function interacts with other AWS services

---
## 📂 Project Structure

```text
Cloud-Based-DVD-Web-App/
├── DVDapp/
│   ├── Melving_Andrew_21441545_CloudComputing.docx
│   ├── dvdWebApp.war
│   ├── dvddb_setup.sql
├── PasswordStrengthValidator/
│   └── lambda_function.py
├── README.md
└── .gitignore
```
---
## 🧠 Future Improvements

Add a front-end interface for the password validator.  
Expand password checks (e.g., entropy calculation, breached password API).  
Dockerize the web app for simplified deployment.  
