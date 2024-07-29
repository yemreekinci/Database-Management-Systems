CREATE TABLE Customer (
    Cust_id VARCHAR(10) PRIMARY KEY NOT NULL,
    Cust_fname VARCHAR(50) NOT NULL,
    Cust_lname VARCHAR(50) NOT NULL,
    Cust_sex VARCHAR(1) NOT NULL,
	Cust_birth DATE NOT NULL,
    Cust_address VARCHAR(100) NOT NULL,
    Cust_phone VARCHAR(30) NOT NULL,
    Cust_email VARCHAR(50) NOT NULL
);


CREATE TABLE Employee (
    Emp_id VARCHAR(10) PRIMARY KEY NOT NULL,
    Emp_fname VARCHAR(50) NOT NULL,
    Emp_lname VARCHAR(50) NOT NULL,
    Emp_sex VARCHAR(10) NOT NULL,
	Emp_birth DATE NOT NULL,
    Emp_salary DECIMAL(10, 2) NOT NULL,
    Emp_position VARCHAR(50) NOT NULL,
    Emp_department VARCHAR(50) NOT NULL,
    Emp_phone VARCHAR(15) NOT NULL,
    Emp_email VARCHAR(100) NOT NULL,
    Emp_address VARCHAR(200) NOT NULL,
	Office_id VARCHAR(10) NOT NULL
);


CREATE TABLE Office (
	Office_id VARCHAR(10) PRIMARY KEY NOT NULL,
	Office_location VARCHAR(50) NOT NULL
);


CREATE TABLE Aircraft (
    Aircraft_id VARCHAR(10) PRIMARY KEY NOT NULL,
    Aircraft_model VARCHAR(50) NOT NULL,
    Seat_capacity INT NOT NULL,
    Production_year INT NOT NULL,
    Maintenance_status VARCHAR(20) NOT NULL
);


CREATE TABLE Airport (
    Airport_id VARCHAR(10) PRIMARY KEY NOT NULL,
    Country VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Map_coordinates VARCHAR(50) NOT NULL
);


CREATE TABLE Luggage (
    Luggage_id VARCHAR(10) PRIMARY KEY NOT NULL,
	Owner_id VARCHAR(10) NOT NULL,
    Weight DECIMAL(10, 2) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Delivery_status VARCHAR(20) NOT NULL
);


CREATE TABLE Flight (
    Flight_id VARCHAR(10) PRIMARY KEY NOT NULL,
	Airport_id VARCHAR(10) NOT NULL,
    Departure_location VARCHAR(50) NOT NULL,
	Destination VARCHAR(50) NOT NULL,
    Aircraft_id VARCHAR(10) NOT NULL,
    Departure_time DATETIME NOT NULL,
    Arrival_time DATETIME NOT NULL,
	Office_id VARCHAR(10) NOT NULL
);


CREATE TABLE Ticket (
    Ticket_id VARCHAR(10) PRIMARY KEY NOT NULL,
	Owner_id VARCHAR(10) NOT NULL,
	Flight_id VARCHAR(10) NOT NULL,
    Class VARCHAR(20) NOT NULL,
    Seat_number VARCHAR(10) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Additional_Services VARCHAR(100) NULL
);


CREATE TABLE Passenger (
    Passenger_id VARCHAR(10) NOT NULL,
	Ticket_id VARCHAR(10) NOT NULL,
    Seat_number VARCHAR(10) NOT NULL,
    Special_requests VARCHAR(100) NULL,
    Passenger_types VARCHAR(50) NOT NULL
);






