create database `new`;
use `new`;

CREATE TABLE department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL,
    department_location VARCHAR(50) NOT NULL
  );

CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    primary_department_id INT,
    FOREIGN KEY (primary_department_id) REFERENCES department(department_id)
);

CREATE TABLE medications (
    medication_id INT PRIMARY KEY AUTO_INCREMENT,
    medication_name VARCHAR(100) NOT NULL
);

CREATE TABLE patient_medications (
    patient_medication_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    medication_id INT,
    prescribed_date DATE NOT NULL,
    primary_department_id INT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (medication_id) REFERENCES medications(medication_id),
    FOREIGN KEY (primary_department_id) REFERENCES department(department_id)
);

CREATE TABLE demographics (
    demographic_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    address TEXT,
    phone_number VARCHAR(15),
    email VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
