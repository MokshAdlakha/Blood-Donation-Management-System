
-- Blood Donation Management System SQL Script

CREATE DATABASE IF NOT EXISTS BloodDonationDB;
USE BloodDonationDB;

CREATE TABLE IF NOT EXISTS Donor (
    donor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    blood_type VARCHAR(5),
    contact_no VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(100),
    last_donated DATE,
    status ENUM('Active', 'Inactive') DEFAULT 'Active'
);

CREATE TABLE IF NOT EXISTS Blood_Bank (
    blood_bank_id INT AUTO_INCREMENT PRIMARY KEY,
    blood_type VARCHAR(5),
    quantity INT
);

CREATE TABLE IF NOT EXISTS Donation (
    donation_id INT AUTO_INCREMENT PRIMARY KEY,
    donor_id INT,
    blood_bank_id INT,
    donation_date DATE,
    FOREIGN KEY (donor_id) REFERENCES Donor(donor_id),
    FOREIGN KEY (blood_bank_id) REFERENCES Blood_Bank(blood_bank_id)
);

CREATE TABLE IF NOT EXISTS Appointment (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    donor_id INT,
    appointment_date DATE,
    status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (donor_id) REFERENCES Donor(donor_id)
);

CREATE TABLE IF NOT EXISTS Blood_Request (
    request_id INT AUTO_INCREMENT PRIMARY KEY,
    hospital_name VARCHAR(100),
    required_blood_type VARCHAR(5),
    quantity_required INT,
    request_date DATE,
    status ENUM('Pending', 'Fulfilled', 'Cancelled') DEFAULT 'Pending'
);

INSERT INTO Donor (name, age, gender, blood_type, contact_no, email, address, last_donated, status)
VALUES
('Rahul Sharma', 28, 'Male', 'A+', '9876543210', 'rahul@gmail.com', 'Delhi', '2025-04-10', 'Active'),
('Sneha Verma', 32, 'Female', 'B+', '9123456780', 'sneha@gmail.com', 'Mumbai', '2025-03-15', 'Active'),
('Amit Singh', 40, 'Male', 'O-', '9988776655', 'amit@gmail.com', 'Lucknow', NULL, 'Inactive');

INSERT INTO Blood_Bank (blood_type, quantity)
VALUES
('A+', 10),
('B+', 5),
('O-', 2);

INSERT INTO Donation (donor_id, blood_bank_id, donation_date)
VALUES
(1, 1, '2025-04-10'),
(2, 2, '2025-03-15');

INSERT INTO Appointment (donor_id, appointment_date, status)
VALUES
(1, '2025-04-10', 'Completed'),
(2, '2025-03-15', 'Completed'),
(3, '2025-05-15', 'Scheduled');

INSERT INTO Blood_Request (hospital_name, required_blood_type, quantity_required, request_date, status)
VALUES
('AIIMS Delhi', 'A+', 3, '2025-05-11', 'Fulfilled'),
('Fortis Mumbai', 'O-', 2, '2025-05-10', 'Pending');
