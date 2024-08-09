
use assignments;
create database assignments1;
use assignments1;
create table company(id int ,company_id int,company_name varchar(20),location varchar(30),
country_located varchar(20),service varchar(20),
created_at timestamp,created_by varchar(10),
modified_at timestamp,modified_by varchar(10) ,primary key(company_id));


create table employee(id int,employee_name varchar(20),employee_id int,
comapny varchar(20),
company_id int,email varchar(20),
created_at timestamp,created_by varchar(10),
modified_at timestamp,modified_by varchar(10) ,
primary key(employee_id),
foreign key(company_id) references company(company_id));


create table project(id int,project_name varchar(30),project_id int,team_size int,company_id int,
employee_id int,
created_at timestamp,created_by varchar(10),
modified_at timestamp,modified_by varchar(10) ,
primary key(project_id),
foreign key(company_id) references company(company_id),
foreign key(employee_id) references employee(employee_id));
drop table project;

create table department(id int,department varchar(20),company_id int,employee_id int,
department_head varchar(20),department_id int,
created_at timestamp,created_by varchar(10),
modified_at timestamp,modified_by varchar(10),
primary key(department_id),
foreign key(company_id) references company(company_id),
foreign key(employee_id) references employee(employee_id));

create table project(id int,project_name varchar(30),project_id int,team_size int,company_id int,
employee_id int,
created_at timestamp,created_by varchar(10),
modified_at timestamp,modified_by varchar(10) ,
primary key(project_id),
foreign key(company_id) references company(company_id),
foreign key(employee_id) references employee(employee_id));

create table project(id int,project_name varchar(30),project_id int,team_size int,company_id int,
employee_id int,department_id int,
created_at timestamp,created_by varchar(10),
modified_at timestamp,modified_by varchar(10) ,
primary key(project_id),
foreign key(company_id) references company(company_id),
foreign key(employee_id) references employee(employee_id),
foreign key(department_id) references department(department_id)) ;


-- 
CREATE TABLE Patients (
    id INT,
    patient_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender ENUM('Male', 'Female', 'Other'),
     phone_number VARCHAR(15),
    created_at TIMESTAMP,
    created_by VARCHAR(10),
    modified_at TIMESTAMP,
    modified_by VARCHAR(10),
    PRIMARY KEY (patient_id)
);

-- Create the Doctors table
CREATE TABLE Doctors (
    id INT,
    doctor_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender ENUM('Male', 'Female', 'Other'),
    specialty VARCHAR(100),
    phone_number VARCHAR(15),
    department_id INT,
    created_at TIMESTAMP,
    created_by VARCHAR(10),
    modified_at TIMESTAMP,
    modified_by VARCHAR(10),
    PRIMARY KEY (doctor_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);


CREATE TABLE Departments (
    id INT,
    department_id INT,
    department_name VARCHAR(100),
    location VARCHAR(100),
    created_at TIMESTAMP,
    created_by VARCHAR(10),
    modified_at TIMESTAMP,
    modified_by VARCHAR(10),
    PRIMARY KEY (department_id)
);

-- Create the Appointments table
CREATE TABLE Appointments (
    id INT,
    appointment_id INT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    status ENUM('Scheduled', 'Completed', 'Canceled') DEFAULT 'Scheduled',
    created_at TIMESTAMP,
    created_by VARCHAR(10),
    modified_at TIMESTAMP,
    modified_by VARCHAR(10),
    PRIMARY KEY (appointment_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);


INSERT INTO Company (id, company_id, company_name, location, country_located, service, created_at, created_by, modified_at, modified_by) VALUES
(1, 101, 'TataTech', 'Mumbai', 'India', 'Automobile', NOW(), 'Admin', NOW(), 'Admin'),
(2, 102, 'Infosys', 'Bengaluru', 'India', 'IT Services', NOW(), 'Admin', NOW(), 'Admin'),
(3, 103, 'Reliance', 'Mumbai', 'India', 'Telecom', NOW(), 'Admin', NOW(), 'Admin'),
(4, 104, 'Wipro', 'Bengaluru', 'India', 'IT Services', NOW(), 'Admin', NOW(), 'Admin'),
(5, 105, 'HCL', 'Noida', 'India', 'IT Services', NOW(), 'Admin', NOW(), 'Admin'),
(6, 106, 'Mahindra', 'Pune', 'India', 'Automobile', NOW(), 'Admin', NOW(), 'Admin'),
(7, 107, 'TCS', 'Mumbai', 'India', 'IT Services', NOW(), 'Admin', NOW(), 'Admin'),
(8, 108, 'Adani', 'Ahmedabad', 'India', 'Infrastructure', NOW(), 'Admin', NOW(), 'Admin'),
(9, 109, 'ICICI', 'Mumbai', 'India', 'Banking', NOW(), 'Admin', NOW(), 'Admin'),
(10, 110, 'Axis Bank', 'Mumbai', 'India', 'Banking', NOW(), 'Admin', NOW(), 'Admin'),
(11, 111, 'Bharti Airtel', 'New Delhi', 'India', 'Telecom', NOW(), 'Admin', NOW(), 'Admin'),
(12, 112, 'L&T', 'Mumbai', 'India', 'Construction', NOW(), 'Admin', NOW(), 'Admin'),
(13, 113, 'Cipla', 'Mumbai', 'India', 'Pharmaceuticals', NOW(), 'Admin', NOW(), 'Admin'),
(14, 114, 'Sun Pharma', 'Mumbai', 'India', 'Pharmaceuticals', NOW(), 'Admin', NOW(), 'Admin'),
(15, 115, 'Zomato', 'Gurgaon', 'India', 'Food Delivery', NOW(), 'Admin', NOW(), 'Admin'),
(16, 116, 'Ola', 'Bengaluru', 'India', 'Ride Sharing', NOW(), 'Admin', NOW(), 'Admin'),
(17, 117, 'Flipkart', 'Bengaluru', 'India', 'E-commerce', NOW(), 'Admin', NOW(), 'Admin'),
(18, 118, 'Paytm', 'Noida', 'India', 'Fintech', NOW(), 'Admin', NOW(), 'Admin'),
(19, 119, 'Byju\'s', 'Bengaluru', 'India', 'Edtech', NOW(), 'Admin', NOW(), 'Admin'),
(20, 120, 'Swiggy', 'Bengaluru', 'India', 'Food Delivery', NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO Employee (id, employee_name, employee_id, company, company_id, email, created_at, created_by, modified_at, modified_by) VALUES
(1, 'Ravi Kumar', 201, 'TataTech', 101, 'ravi.k@tatatech.com', NOW(), 'Admin', NOW(), 'Admin'),
(2, 'Anita Sharma', 202, 'Infosys', 102, 'anita.s@infosys.com', NOW(), 'Admin', NOW(), 'Admin'),
(3, 'Suresh Patil', 203, 'Reliance', 103, 'suresh.p@reliance.com', NOW(), 'Admin', NOW(), 'Admin'),
(4, 'Deepa Rao', 204, 'Wipro', 104, 'deepa.r@wipro.com', NOW(), 'Admin', NOW(), 'Admin'),
(5, 'Vikram Singh', 205, 'HCL', 105, 'vikram.s@hcl.com', NOW(), 'Admin', NOW(), 'Admin'),
(6, 'Priya Joshi', 206, 'Mahindra', 106, 'priya.j@mahindra.com', NOW(), 'Admin', NOW(), 'Admin'),
(7, 'Amit Desai', 207, 'TCS', 107, 'amit.d@tcs.com', NOW(), 'Admin', NOW(), 'Admin'),
(8, 'Meena Nair', 208, 'Adani', 108, 'meena.n@adani.com', NOW(), 'Admin', NOW(), 'Admin'),
(9, 'Rakesh Gupta', 209, 'ICICI', 109, 'rakesh.g@icicibank.com', NOW(), 'Admin', NOW(), 'Admin'),
(10, 'Sonal Mehta', 210, 'Axis Bank', 110, 'sonal.m@axisbank.com', NOW(), 'Admin', NOW(), 'Admin'),
(11, 'Ajay Verma', 211, 'Bharti Airtel', 111, 'ajay.v@airtel.com', NOW(), 'Admin', NOW(), 'Admin'),
(12, 'Kiran Pandey', 212, 'L&T', 112, 'kiran.p@lnt.com', NOW(), 'Admin', NOW(), 'Admin'),
(13, 'Nisha Yadav', 213, 'Cipla', 113, 'nisha.y@cipla.com', NOW(), 'Admin', NOW(), 'Admin'),
(14, 'Rohit Kapoor', 214, 'Sun Pharma', 114, 'rohit.k@sunpharma.com', NOW(), 'Admin', NOW(), 'Admin'),
(15, 'Sneha Reddy', 215, 'Zomato', 115, 'sneha.r@zomato.com', NOW(), 'Admin', NOW(), 'Admin'),
(16, 'Rahul Bose', 216, 'Ola', 116, 'rahul.b@ola.com', NOW(), 'Admin', NOW(), 'Admin'),
(17, 'Swati Saxena', 217, 'Flipkart', 117, 'swati.s@flipkart.com', NOW(), 'Admin', NOW(), 'Admin'),
(18, 'Vivek Jain', 218, 'Paytm', 118, 'vivek.j@paytm.com', NOW(), 'Admin', NOW(), 'Admin'),
(19, 'Alok Mishra', 219, 'Byju\'s', 119, 'alok.m@byjus.com', NOW(), 'Admin', NOW(), 'Admin'),
(20, 'Pooja Patel', 220, 'Swiggy', 120, 'pooja.p@swiggy.com', NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO Employee (id, employee_name, employee_id, comapny, company_id, email, created_at, created_by, modified_at, modified_by) VALUES
(1, 'Ravi Kumar', 201, 'TataTech', 101, 'ravi.k@tatatech.com', NOW(), 'Admin', NOW(), 'Admin'),
(2, 'Anita Sharma', 202, 'Infosys', 102, 'anita.s@infosys.com', NOW(), 'Admin', NOW(), 'Admin'),
(3, 'Suresh Patil', 203, 'Reliance', 103, 'sure.p@reliance.com', NOW(), 'Admin', NOW(), 'Admin'),
(4, 'Deepa Rao', 204, 'Wipro', 104, 'deepa.r@wipro.com', NOW(), 'Admin', NOW(), 'Admin'),
(5, 'Vikram Singh', 205, 'HCL', 105, 'vikram.s@hcl.com', NOW(), 'Admin', NOW(), 'Admin'),
(6, 'Priya Joshi', 206, 'Mahindra', 106, 'priya.j@mahindra.com', NOW(), 'Admin', NOW(), 'Admin'),
(7, 'Amit Desai', 207, 'TCS', 107, 'amit.d@tcs.com', NOW(), 'Admin', NOW(), 'Admin'),
(8, 'Meena Nair', 208, 'Adani', 108, 'meena.n@adani.com', NOW(), 'Admin', NOW(), 'Admin'),
(9, 'Rakesh Gupta', 209, 'ICICI', 109, 'rakesh.g@bank.com', NOW(), 'Admin', NOW(), 'Admin'),
(10, 'Sonal Mehta', 210, 'Axis Bank', 110, 'sonal.m@axisbank.com', NOW(), 'Admin', NOW(), 'Admin'),
(11, 'Ajay Verma', 211, 'Bharti Airtel', 111, 'ajay.v@airtel.com', NOW(), 'Admin', NOW(), 'Admin'),
(12, 'Kiran Pandey', 212, 'L&T', 112, 'kiran.p@lnt.com', NOW(), 'Admin', NOW(), 'Admin'),
(13, 'Nisha Yadav', 213, 'Cipla', 113, 'nisha.y@cipla.com', NOW(), 'Admin', NOW(), 'Admin'),
(14, 'Rohit Kapoor', 214, 'Sun Pharma', 114, 'rohit.k@sun.com', NOW(), 'Admin', NOW(), 'Admin'),
(15, 'Sneha Reddy', 215, 'Zomato', 115, 'sneha.r@zomato.com', NOW(), 'Admin', NOW(), 'Admin'),
(16, 'Rahul Bose', 216, 'Ola', 116, 'rahul.b@ola.com', NOW(), 'Admin', NOW(), 'Admin'),
(17, 'Swati Saxena', 217, 'Flipkart', 117, 'swati.s@flipkart.com', NOW(), 'Admin', NOW(), 'Admin'),
(18, 'Vivek Jain', 218, 'Paytm', 118, 'vivek.j@paytm.com', NOW(), 'Admin', NOW(), 'Admin'),
(19, 'Alok Mishra', 219, 'Byju\'s', 119, 'alok.m@byjus.com', NOW(), 'Admin', NOW(), 'Admin'),
(20, 'Pooja Patel', 220, 'Swiggy', 120, 'pooja.p@swiggy.com', NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO Department (id, department, company_id, employee_id, department_head, department_id, created_at, created_by, modified_at, modified_by) VALUES
(1, 'Engineering', 101, 201, 'Ravi Kumar', 301, NOW(), 'Admin', NOW(), 'Admin'),
(2, 'HR', 102, 202, 'Anita Sharma', 302, NOW(), 'Admin', NOW(), 'Admin'),
(3, 'Finance', 103, 203, 'Suresh Patil', 303, NOW(), 'Admin', NOW(), 'Admin'),
(4, 'Marketing', 104, 204, 'Deepa Rao', 304, NOW(), 'Admin', NOW(), 'Admin'),
(5, 'Sales', 105, 205, 'Vikram Singh', 305, NOW(), 'Admin', NOW(), 'Admin'),
(6, 'Customer Support', 106, 206, 'Priya Joshi', 306, NOW(), 'Admin', NOW(), 'Admin'),
(7, 'Product Development', 107, 207, 'Amit Desai', 307, NOW(), 'Admin', NOW(), 'Admin'),
(8, 'Logistics', 108, 208, 'Meena Nair', 308, NOW(), 'Admin', NOW(), 'Admin'),
(9, 'Operations', 109, 209, 'Rakesh Gupta', 309, NOW(), 'Admin', NOW(), 'Admin'),
(10, 'Business Development', 110, 210, 'Sonal Mehta', 310, NOW(), 'Admin', NOW(), 'Admin'),
(11, 'Network Management', 111, 211, 'Ajay Verma', 311, NOW(), 'Admin', NOW(), 'Admin'),
(12, 'Engineering', 112, 212, 'Kiran Pandey', 312, NOW(), 'Admin', NOW(), 'Admin'),
(13, 'Pharmacy', 113, 213, 'Nisha Yadav', 313, NOW(), 'Admin', NOW(), 'Admin'),
(14, 'Supply Chain', 114, 214, 'Rohit Kapoor', 314, NOW(), 'Admin', NOW(), 'Admin'),
(15, 'HR', 115, 215, 'Sneha Reddy', 315, NOW(), 'Admin', NOW(), 'Admin'),
(16, 'Finance', 116, 216, 'Rahul Bose', 316, NOW(), 'Admin', NOW(), 'Admin'),
(17, 'Marketing', 117, 217, 'Swati Saxena', 317, NOW(), 'Admin', NOW(), 'Admin'),
(18, 'Product Management', 118, 218, 'Vivek Jain', 318, NOW(), 'Admin', NOW(), 'Admin'),
(19, 'Sales', 119, 219, 'Alok Mishra', 319, NOW(), 'Admin', NOW(), 'Admin'),
(20, 'Customer Service', 120, 220, 'Pooja Patel', 320, NOW(), 'Admin', NOW(), 'Admin');


INSERT INTO Project (id, project_name, project_id, team_size, company_id, employee_id, created_at, created_by, modified_at, modified_by) VALUES
(1, 'AI Research', 401, 10, 101, 201, NOW(), 'Admin', NOW(), 'Admin'),
(2, 'ERP System', 402, 8, 102, 202, NOW(), 'Admin', NOW(), 'Admin'),
(3, 'E-commerce Platform', 403, 12, 103, 203, NOW(), 'Admin', NOW(), 'Admin'),
(4, 'Cloud Migration', 404, 15, 104, 204, NOW(), 'Admin', NOW(), 'Admin'),
(5, 'Mobile App', 405, 9, 105, 205, NOW(), 'Admin', NOW(), 'Admin'),
(6, 'CRM System', 406, 11, 106, 206, NOW(), 'Admin', NOW(), 'Admin'),
(7, 'Web Development', 407, 7, 107, 207, NOW(), 'Admin', NOW(), 'Admin'),
(8, 'Supply Chain Management', 408, 14, 108, 208, NOW(), 'Admin', NOW(), 'Admin'),
(9, 'Banking App', 409, 10, 109, 209, NOW(), 'Admin', NOW(), 'Admin'),
(10, 'Fintech Solution', 410, 13, 110, 210, NOW(), 'Admin', NOW(), 'Admin'),
(11, 'Network Infrastructure', 411, 16, 111, 211, NOW(), 'Admin', NOW(), 'Admin'),
(12, 'Smart Home Tech', 412, 8, 112, 212, NOW(), 'Admin', NOW(), 'Admin'),
(13, 'Pharma Research', 413, 9, 113, 213, NOW(), 'Admin', NOW(), 'Admin'),
(14, 'Healthcare Platform', 414, 11, 114, 214, NOW(), 'Admin', NOW(), 'Admin'),
(15, 'Food Delivery App', 415, 10, 115, 215, NOW(), 'Admin', NOW(), 'Admin'),
(16, 'Ride-Sharing App', 416, 13, 116, 216, NOW(), 'Admin', NOW(), 'Admin'),
(17, 'E-commerce Website', 417, 12, 117, 217, NOW(), 'Admin', NOW(), 'Admin'),
(18, 'Digital Payment Solution', 418, 15, 118, 218, NOW(), 'Admin', NOW(), 'Admin'),
(19, 'Educational Platform', 419, 9, 119, 219, NOW(), 'Admin', NOW(), 'Admin'),
(20, 'Food Ordering System', 420, 11, 120, 220, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO Departments (id, department_id, department_name, location, created_at, created_by, modified_at, modified_by) VALUES
(1, 101, 'Cardiology', 'Delhi', NOW(), 'Admin', NOW(), 'Admin'),
(2, 102, 'Neurology', 'Mumbai', NOW(), 'Admin', NOW(), 'Admin'),
(3, 103, 'Orthopedics', 'Bangalore', NOW(), 'Admin', NOW(), 'Admin'),
(4, 104, 'Pediatrics', 'Kolkata', NOW(), 'Admin', NOW(), 'Admin'),
(5, 105, 'Dermatology', 'Chennai', NOW(), 'Admin', NOW(), 'Admin'),
(6, 106, 'Gynecology', 'Hyderabad', NOW(), 'Admin', NOW(), 'Admin'),
(7, 107, 'Oncology', 'Ahmedabad', NOW(), 'Admin', NOW(), 'Admin'),
(8, 108, 'Ophthalmology', 'Pune', NOW(), 'Admin', NOW(), 'Admin'),
(9, 109, 'ENT', 'Jaipur', NOW(), 'Admin', NOW(), 'Admin'),
(10, 110, 'General Medicine', 'Lucknow', NOW(), 'Admin', NOW(), 'Admin'),
(11, 111, 'Surgery', 'Kanpur', NOW(), 'Admin', NOW(), 'Admin'),
(12, 112, 'Urology', 'Nagpur', NOW(), 'Admin', NOW(), 'Admin'),
(13, 113, 'Gastroenterology', 'Surat', NOW(), 'Admin', NOW(), 'Admin'),
(14, 114, 'Nephrology', 'Bhopal', NOW(), 'Admin', NOW(), 'Admin'),
(15, 115, 'Rheumatology', 'Patna', NOW(), 'Admin', NOW(), 'Admin'),
(16, 116, 'Hematology', 'Indore', NOW(), 'Admin', NOW(), 'Admin'),
(17, 117, 'Endocrinology', 'Vijayawada', NOW(), 'Admin', NOW(), 'Admin'),
(18, 118, 'Allergy', 'Coimbatore', NOW(), 'Admin', NOW(), 'Admin'),
(19, 119, 'Pulmonology', 'Trivandrum', NOW(), 'Admin', NOW(), 'Admin'),
(20, 120, 'Rheumatology', 'Mangalore', NOW(), 'Admin', NOW(), 'Admin');


INSERT INTO Doctors (id, doctor_id, first_name, last_name, gender, specialty, phone_number, department_id, created_at, created_by, modified_at, modified_by) VALUES
(1, 201, 'Amit', 'Sharma', 'Male', 'Cardiology', '9812345670', 101, NOW(), 'Admin', NOW(), 'Admin'),
(2, 202, 'Anjali', 'Desai', 'Female', 'Neurology', '9823456781', 102, NOW(), 'Admin', NOW(), 'Admin'),
(3, 203, 'Rajesh', 'Verma', 'Male', 'Orthopedics', '9834567892', 103, NOW(), 'Admin', NOW(), 'Admin'),
(4, 204, 'Meera', 'Rao', 'Female', 'Pediatrics', '9845678903', 104, NOW(), 'Admin', NOW(), 'Admin'),
(5, 205, 'Vikram', 'Singh', 'Male', 'Dermatology', '9856789014', 105, NOW(), 'Admin', NOW(), 'Admin'),
(6, 206, 'Priya', 'Kumar', 'Female', 'Gynecology', '9867890125', 106, NOW(), 'Admin', NOW(), 'Admin'),
(7, 207, 'Suresh', 'Patil', 'Male', 'Oncology', '9878901236', 107, NOW(), 'Admin', NOW(), 'Admin'),
(8, 208, 'Sonal', 'Mehta', 'Female', 'Ophthalmology', '9889012347', 108, NOW(), 'Admin', NOW(), 'Admin'),
(9, 209, 'Ravi', 'Joshi', 'Male', 'ENT', '9890123458', 109, NOW(), 'Admin', NOW(), 'Admin'),
(10, 210, 'Nisha', 'Yadav', 'Female', 'General Medicine', '9901234569', 110, NOW(), 'Admin', NOW(), 'Admin'),
(11, 211, 'Amit', 'Kumar', 'Male', 'Surgery', '9912345670', 111, NOW(), 'Admin', NOW(), 'Admin'),
(12, 212, 'Rohit', 'Kapoor', 'Male', 'Urology', '9923456781', 112, NOW(), 'Admin', NOW(), 'Admin'),
(13, 213, 'Sneha', 'Reddy', 'Female', 'Gastroenterology', '9934567892', 113, NOW(), 'Admin', NOW(), 'Admin'),
(14, 214, 'Alok', 'Mishra', 'Male', 'Nephrology', '9945678903', 114, NOW(), 'Admin', NOW(), 'Admin'),
(15, 215, 'Pooja', 'Patel', 'Female', 'Rheumatology', '9956789014', 115, NOW(), 'Admin', NOW(), 'Admin'),
(16, 216, 'Raj', 'Sharma', 'Male', 'Hematology', '9967890125', 116, NOW(), 'Admin', NOW(), 'Admin'),
(17, 217, 'Swati', 'Saxena', 'Female', 'Endocrinology', '9978901236', 117, NOW(), 'Admin', NOW(), 'Admin'),
(18, 218, 'Vivek', 'Jain', 'Male', 'Allergy', '9989012347', 118, NOW(), 'Admin', NOW(), 'Admin'),
(19, 219, 'Deepa', 'Rao', 'Female', 'Pulmonology', '9990123458', 119, NOW(), 'Admin', NOW(), 'Admin'),
(20, 220, 'Ajay', 'Verma', 'Male', 'Rheumatology', '9901234567', 120, NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO Patients (id, patient_id, first_name, last_name, gender, phone_number, created_at, created_by, modified_at, modified_by) VALUES
(1, 301, 'Rajesh', 'Kumar', 'Male', '9812345678', NOW(), 'Admin', NOW(), 'Admin'),
(2, 302, 'Anita', 'Sharma', 'Female', '9823456789', NOW(), 'Admin', NOW(), 'Admin'),
(3, 303, 'Sita', 'Patel', 'Female', '9834567890', NOW(), 'Admin', NOW(), 'Admin'),
(4, 304, 'Vikram', 'Singh', 'Male', '9845678901', NOW(), 'Admin', NOW(), 'Admin'),
(5, 305, 'Nisha', 'Rao', 'Female', '9856789012', NOW(), 'Admin', NOW(), 'Admin'),
(6, 306, 'Ravi', 'Kumar', 'Male', '9867890123', NOW(), 'Admin', NOW(), 'Admin'),
(7, 307, 'Pooja', 'Yadav', 'Female', '9878901234', NOW(), 'Admin', NOW(), 'Admin'),
(8, 308, 'Amit', 'Desai', 'Male', '9889012345', NOW(), 'Admin', NOW(), 'Admin'),
(9, 309, 'Sneha', 'Kapoor', 'Female', '9890123456', NOW(), 'Admin', NOW(), 'Admin'),
(10, 310, 'Deepak', 'Singh', 'Male', '9901234567', NOW(), 'Admin', NOW(), 'Admin'),
(11, 311, 'Kiran', 'Mehta', 'Female', '9912345678', NOW(), 'Admin', NOW(), 'Admin'),
(12, 312, 'Alok', 'Mishra', 'Male', '9923456789', NOW(), 'Admin', NOW(), 'Admin'),
(13, 313, 'Sonal', 'Jain', 'Female', '9934567890', NOW(), 'Admin', NOW(), 'Admin'),
(14, 314, 'Rohit', 'Sharma', 'Male', '9945678901', NOW(), 'Admin', NOW(), 'Admin'),
(15, 315, 'Priya', 'Saxena', 'Female', '9956789012', NOW(), 'Admin', NOW(), 'Admin'),
(16, 316, 'Raj', 'Rao', 'Male', '9967890123', NOW(), 'Admin', NOW(), 'Admin'),
(17, 317, 'Swati', 'Kumar', 'Female', '9978901234', NOW(), 'Admin', NOW(), 'Admin'),
(18, 318, 'Vivek', 'Desai', 'Male', '9989012345', NOW(), 'Admin', NOW(), 'Admin'),
(19, 319, 'Aarti', 'Patel', 'Female', '9990123456', NOW(), 'Admin', NOW(), 'Admin'),
(20, 320, 'Ravi', 'Reddy', 'Male', '9901234568', NOW(), 'Admin', NOW(), 'Admin');

INSERT INTO Appointments (id, appointment_id, patient_id, doctor_id, appointment_date, appointment_time, status, created_at, created_by, modified_at, modified_by) VALUES
(1, 401, 301, 201, '2024-08-10', '09:00:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(2, 402, 302, 202, '2024-08-11', '10:00:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(3, 403, 303, 203, '2024-08-12', '11:00:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(4, 404, 304, 204, '2024-08-13', '12:00:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(5, 405, 305, 205, '2024-08-14', '13:00:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(6, 406, 306, 206, '2024-08-15', '14:00:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(7, 407, 307, 207, '2024-08-16', '15:00:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(8, 408, 308, 208, '2024-08-17', '16:00:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(9, 409, 309, 209, '2024-08-18', '09:30:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(10, 410, 310, 210, '2024-08-19', '10:30:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(11, 411, 311, 211, '2024-08-20', '11:30:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(12, 412, 312, 212, '2024-08-21', '12:30:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(13, 413, 313, 213, '2024-08-22', '13:30:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(14, 414, 314, 214, '2024-08-23', '14:30:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(15, 415, 315, 215, '2024-08-24', '15:30:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(16, 416, 316, 216, '2024-08-25', '16:30:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(17, 417, 317, 217, '2024-08-26', '09:00:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(18, 418, 318, 218, '2024-08-27', '10:00:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(19, 419, 319, 219, '2024-08-28', '11:00:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin'),
(20, 420, 320, 220, '2024-08-29', '12:00:00', 'Scheduled', NOW(), 'Admin', NOW(), 'Admin');
USE ASSIGNMENT1;
UPDATE Company
SET location = CASE
    WHEN company_id = 101 THEN 'Pune'
    WHEN company_id = 102 THEN 'Chennai'
    WHEN company_id = 103 THEN 'Hyderabad'
    ELSE location
END;

SELECT * 
FROM employee
ORDER BY employee_id
LIMIT 5;


SELECT * 
FROM employee
ORDER BY employee_id
LIMIT 5 OFFSET 10;
SELECT department_id, COUNT(employee_id) AS employee_count
FROM employee
GROUP BY department_id
HAVING COUNT(employee_id) > 5;

 SELECT product_id, product_name, category_id, price
FROM products
ORDER BY category_id ASC, price DESC;