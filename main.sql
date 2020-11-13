CREATE TABLE Customers( 
--create main table
customers_id INT,
first_name VARCHAR(16),
last_name VARCHAR(16),
PRIMARY KEY (customers_id)
--make PK to make connection with other tables
);
CREATE TABLE Move_cost(
move_cost_id INT,
move_cost_price DECIMAL(12),
PRIMARY KEY (move_cost_id),
customers_id INT,
FOREIGN KEY (customers_id)
REFERENCES Customers(customers_id)
--make connection with customer id
);
CREATE TABLE Cutomer_info(
--create table
Cutomer_info_id INT,
age DECIMAL(2),
gender VARCHAR(6),
email VARCHAR(25),
ph_number DECIMAL(11),
--create columns
PRIMARY KEY (Cutomer_info_id),
customers_id INT,
FOREIGN KEY (customers_id)
REFERENCES Customers(customers_id)
--make connection with customer id
);
CREATE TABLE Move_details(
move_details_id INT,
zipcode_from VARCHAR(10),
zipcode_to VARCHAR(10),
commentary VARCHAR(100) NULL,
--make NULL so that it is not necessary to give a value
PRIMARY KEY (move_details_id),
customers_id INT,
FOREIGN KEY (customers_id)
REFERENCES Customers(customers_id)
);
CREATE TABLE Move_size(
Move_size_id INT,
num_of_rooms DECIMAL(10),
PRIMARY KEY (Move_size_id),
customers_id INT,
FOREIGN KEY (customers_id)
REFERENCES Customers(customers_id)
);
CREATE TABLE Items(
items_id INT,
large_items VARCHAR(255),
small_items VARCHAR(255),
PRIMARY KEY(items_id),
customers_id INT,
FOREIGN KEY (customers_id)
REFERENCES Customers(customers_id)
);
CREATE TABLE packing_unpacking(
packing_unpacking_id INT,
additional_service VARCHAR(3) NULL,
--make NULL so that it is not necessary to give a value
PRIMARY KEY (packing_unpacking_id),
items_id INT,
FOREIGN KEY (items_id)
REFERENCES Items(items_id)
);
CREATE TABLE Drivers(
drivers_id INT,
fname VARCHAR(16),
lname VARCHAR(16),
PRIMARY KEY (drivers_id),
customers_id INT,
FOREIGN KEY (customers_id)
REFERENCES Customers(customers_id)
);
CREATE TABLE Trucks(
trucks_id INT,
trucks_model VARCHAR(50),
PRIMARY KEY (trucks_id),
drivers_id INT,
FOREIGN KEY (drivers_id) 
REFERENCES Drivers(drivers_id)
--make connection with drivers id logical
 );
CREATE TABLE Schedule(
schedule_id INT,
work_days VARCHAR(25),
weekends VARCHAR(25),
PRIMARY KEY (schedule_id),
drivers_id INT,
FOREIGN KEY (drivers_id) 
REFERENCES Drivers(drivers_id)
--here we make connection with drivers id
);
