USE [db_drill7]
GO

IF Exists (SELECT 1 FROM INFORMATION_SCHEMA.TABLES tbl_car)
	DROP TABLE tbl_car, tbl_customer;


CREATE TABLE tbl_customer (
	customer_id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	customer_fname VARCHAR(50) NOT NULL,
	customer_lname VARCHAR(50) NOT NULL,
	customer_email VARCHAR(50) NOT NULL,
);

CREATE TABLE tbl_car (
	car_id INT PRIMARY KEY NOT NULL IDENTITY (1, 1),
	car_make VARCHAR(50) NOT NULL,
	car_model VARCHAR(50) NOT NULL,
	car_trim VARCHAR(50) NOT NULL,
	car_year INT NOT NULL,
	car_engine VARCHAR(50) NOT NULL,
	car_customer INT NOT NULL CONSTRAINT fk_customer_id FOREIGN KEY REFERENCES tbl_customer(customer_id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO tbl_customer
	(customer_fname, customer_lname, customer_email)
	VALUES
	('Daniel', 'Sng', 'dsng@gmail.com'),
	('Jeremy', 'Reynolds', 'jreynolds@aol.com'),
	('Lisa', 'Smith', 'lisa.smith@gmail.com'),
	('Rae', 'Donaghue', 'raedon@gmail.com'),
	('Carter', 'Jacobson', 'crjacobsen@yahoo.com'),
	('Donna', 'Rickkets', 'drickkets@gmail.com'),
	('Bret', 'Stevens', 'bretstevens@gmail.com'),
	('London', 'Garner', 'glondon@cox.net')
;

SELECT * FROM tbl_customer;

INSERT INTO tbl_car
	(car_make, car_model, car_trim, car_year, car_engine, car_customer)
	VALUES
	('Toyota', 'RAV4', 'XLE', 2015, 'I4', 2),
	('Tesla', 'Model 3', 'Dual Motor Long Range', 2018, 'Dual Motor Electric', 4),
	('Audi', 'Allroad', 'Premium Plus', 2014, 'I4', 3),
	('Toyota', 'Tacoma', 'Access Cab SR5', 2003, 'V6', 6),
	('Ford', 'F150', 'Lariat', 2010, 'V8', 1),
	('Subaru', 'GL', 'Base', 1991, 'I4', 5),
	('Volkswagen', 'Phaeton', 'SEL', 2004, 'V12', 2),
	('Jeep', 'Grand Cherokee', 'Overland', 2016, 'V6', 8),
	('Volkswagen', 'GTI', 'Sport', 2017, 'I4', 3),
	('Toyota', 'FJ40', 'Base', 1969, 'V8', 4),
	('Jeep', 'Wrangler', 'Rubicon', 2012, 'V6', 5),
	('Audi', 'RS3', 'Prestige', 2017, 'I5', 7)
;

SELECT * FROM tbl_car;

SELECT tbl_customer.customer_fname, tbl_customer.customer_lname, tbl_customer.customer_email, tbl_car.car_year, tbl_car.car_make, tbl_car.car_model
FROM tbl_customer
FULL OUTER JOIN tbl_car ON tbl_customer.customer_id = tbl_car.car_customer
ORDER BY tbl_customer.customer_lname