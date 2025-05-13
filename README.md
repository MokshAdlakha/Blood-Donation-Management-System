
# Blood Donation Management System (BDMS) - DBMS Project

## 📋 Project Overview

The Blood Donation Management System is a database-centric project designed to manage blood donors, blood bank inventory, hospital blood requests, appointments, and donations. It is built using MySQL and demonstrates the use of relational database concepts, SQL queries, and normalization.

---

## 🛠️ Features

- Donor Registration and Management
- Blood Inventory Tracking
- Appointment Scheduling
- Donation Records
- Blood Request Management for Hospitals
- Basic SQL Queries for Data Retrieval and Updates

---

## 🧱 Database Structure

### Tables:

1. **Donor** - Stores information about blood donors
2. **Blood_Bank** - Tracks blood units available by type
3. **Donation** - Logs each donation made by a donor
4. **Appointment** - Manages appointments for donations
5. **Blood_Request** - Stores hospital requests for blood units

---

## 🧑‍💻 Technologies Used

- MySQL
- SQL
- MySQL Workbench (or any SQL IDE)

---

## 📂 Files Included

- `Blood_Donation_Management_System.sql` — SQL script to create and populate the database
- `README.md` — Project documentation

---

## ▶️ How to Run

1. Open MySQL Workbench or any SQL environment.
2. Execute the `Blood_Donation_Management_System.sql` script.
3. Explore the tables using `SELECT` queries or develop a frontend to interface with the database.

---

## 🔍 Sample Queries

```sql
-- View all donors
SELECT * FROM Donor;

-- View upcoming appointments
SELECT d.name, a.appointment_date
FROM Appointment a
JOIN Donor d ON a.donor_id = d.donor_id
WHERE a.status = 'Scheduled';

-- View blood inventory
SELECT * FROM Blood_Bank;

-- View pending hospital requests
SELECT * FROM Blood_Request WHERE status = 'Pending';
```

---

## ✅ Output Preview

VIDEO SUBMITTED

---

## 📌 Author

Created by Moksh Adlakha  
Vivekananda Institue of Professional Studies
DBMS Mini Project - Semester [IV]

---

## 📜 License

This project is for academic and learning purposes.
