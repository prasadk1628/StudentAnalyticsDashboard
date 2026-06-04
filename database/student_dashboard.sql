CREATE DATABASE IF NOT EXISTS student_dashboard;

USE student_dashboard;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    department VARCHAR(20) NOT NULL,
    marks INT NOT NULL,
    result VARCHAR(10) NOT NULL
);

INSERT INTO students VALUES
(101,'Rahul','CSE',85,'PASS'),
(102,'Priya','ECE',72,'PASS'),
(103,'Arjun','CSE',35,'FAIL'),
(104,'Sneha','EEE',91,'PASS'),
(105,'Kiran','MECH',65,'PASS'),
(106,'Divya','CSE',48,'PASS'),
(107,'Ravi','ECE',30,'FAIL'),
(108,'Anjali','EEE',78,'PASS'),
(109,'Teja','MECH',88,'PASS'),
(110,'Akhil','CSE',95,'PASS'),
(111,'Pooja','ECE',55,'PASS'),
(112,'Vikram','EEE',39,'FAIL'),
(113,'Nithin','MECH',74,'PASS'),
(114,'Keerthi','CSE',82,'PASS'),
(115,'Sandeep','ECE',61,'PASS');