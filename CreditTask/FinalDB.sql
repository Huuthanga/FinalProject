create database FinalDB

use FinalDB

CREATE TABLE Reseller (
  reseller_id VARCHAR(255) PRIMARY KEY,
  reseller_name VARCHAR(255) NOT NULL,
  reseller_contact_person VARCHAR(255) NOT NULL,
  reseller_address VARCHAR(255) NOT NULL,
  reseller_email VARCHAR(255) NOT NULL,
  reseller_phone VARCHAR(255) NOT NULL
);

CREATE TABLE Agents (
  agent_id VARCHAR(255) PRIMARY KEY,
  agent_name VARCHAR(255) NOT NULL,
  agent_contact_person VARCHAR(255) NOT NULL,
  agent_address VARCHAR(255) NOT NULL,
  agent_email VARCHAR(255) NOT NULL,
  agent_phone VARCHAR(255) NOT NULL
);

CREATE TABLE Orders (
  order_id VARCHAR(255) PRIMARY KEY,
  reseller_id VARCHAR(255) NOT NULL,
  agent_id VARCHAR(255) NOT NULL,
  order_date DATE NOT NULL,
  product_name VARCHAR(255) NOT NULL,
  quantity INT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  status_payment Nvarchar(5) Not Null,
  FOREIGN KEY (reseller_id) REFERENCES Reseller(reseller_id),
  FOREIGN KEY (agent_id) REFERENCES Agents(agent_id)
);

CREATE TABLE Product (
  product_id VARCHAR(255) PRIMARY KEY,
  product_name VARCHAR(255) NOT NULL,
  product_brand VARCHAR(255) NOT NULL,
  product_model VARCHAR(255) NOT NULL,
  product_description TEXT,
  product_price DECIMAL(10,2) NOT NULL,
  product_quantity INT NOT NULL,
  product_image VARCHAR(255),
  product_date_added DATE NOT NULL
);

CREATE TABLE OrderItem (
  order_item_id VARCHAR(255) PRIMARY KEY,
  order_id VARCHAR(255) NOT NULL,
  product_id VARCHAR(255) NOT NULL,
  quantity INT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

INSERT INTO Reseller (reseller_id, reseller_name, reseller_contact_person, reseller_address, reseller_email, reseller_phone)
VALUES 
  ('RS01', 'ABC Mobile', 'John Doe', '123 Main Street', 'john@abcmobile.com', '555-555-1234'),
  ('RS02', 'XYZ Communications', 'Jane Smith', '456 Oak Ave', 'jane@xyzcomms.com', '555-555-5678'),
  ('RS03', 'Tech Mart', 'Mike Brown', '789 Elm St', 'mike@techmart.com', '555-555-9012'),
  ('RS04', 'Mobile Plus', 'Sara Jones', '321 Maple St', 'sara@mobileplus.com', '555-555-3456'),
  ('RS05', 'Phone Zone', 'Bob Lee', '654 Cherry St', 'bob@phonezone.com', '555-555-7890'),
  ('RS06', 'Mobile Mart', 'Mandy Kim', '987 Pine St', 'mandy@mobilemart.com', '555-555-2345'),
  ('RS07', 'Tech Plus', 'David Lee', '876 Cedar St', 'david@techplus.com', '555-555-6789'),
  ('RS08', 'Gadget Hub', 'Lisa Wang', '543 Birch Ave', 'lisa@gadgethub.com', '555-555-0123'),
  ('RS09', 'Mobile Central', 'Tom Chen', '210 Oak St', 'tom@mobilecentral.com', '555-555-4567'),
  ('RS010', 'Cellular One', 'Anna Lee', '753 Maple Ave', 'anna@cellularone.com', '555-555-8901');


INSERT INTO Agents (agent_id, agent_name, agent_contact_person, agent_address, agent_email, agent_phone)
VALUES 
  ('AGT01', 'Mobile City', 'Bob Lee', '123 Main St', 'bob@mobilecity.com', '555-555-1234'),
  ('AGT02', 'Cellular Connection', 'Sara Jones', '456 Oak Ave', 'sara@cellularconnection.com', '555-555-5678'),
  ('AGT03', 'Mobile World', 'Mike Brown', '789 Elm St', 'mike@mobileworld.com', '555-555-9012'),
  ('AGT04', 'Wireless Depot', 'Jane Smith', '321 Maple St', 'jane@wirelessdepot.com', '555-555-3456'),
  ('AGT05', 'Tech Solutions', 'John Doe', '654 Cherry St', 'john@techsolutions.com', '555-555-7890'),
  ('AGT06', 'Phone Experts', 'Mandy Kim', '987 Pine St', 'mandy@phoneexperts.com', '555-555-2345'),
  ('AGT07', 'Mobile Store', 'David Lee', '876 Cedar St', 'david@mobilestore.com', '555-555-6789'),
  ('AGT08', 'Tech Corner', 'Lisa Wang', '543 Birch Ave', 'lisa@techcorner.com', '555-555-0123'),
  ('AGT09', 'Wireless World', 'Tom Chen', '210 Oak St', 'tom@wirelessworld.com', '555-555-4567'),
  ('AGT010', 'Cellular World', 'Anna Lee', '753 Maple Ave', 'anna@cellularworld.com', '555-555-8901');

INSERT INTO Product (product_id, product_name, product_brand, product_model, product_description, product_price, product_quantity, product_image, product_date_added)
VALUES 
  ('PRD01', 'iPhone 12', 'Apple', 'A2403', '5G smartphone with A14 Bionic chip', 999.99, 100, 'iphone12.jpg', '2022-01-01'),
  ('PRD02', 'Galaxy S21', 'Samsung', 'SM-G991U', '5G smartphone with 120Hz display', 899.99, 50, 'galaxys21.jpg', '2022-01-02'),
  ('PRD03', 'Pixel 6', 'Google', 'G6M5F6', '5G smartphone with Tensor chip', 799.99, 75, 'pixel6.jpg', '2022-01-03'),
  ('PRD04', 'OnePlus 10', 'OnePlus', 'OP10', '5G smartphone with Hasselblad camera', 899.99, 25, 'oneplus10.jpg', '2022-01-04'),
  ('PRD05', 'Xperia 5 III', 'Sony', 'XQ-BC72', '5G smartphone with 120Hz display', 1099.99, 30, 'xperia5iii.jpg', '2022-01-05'),
  ('PRD06', 'Galaxy Tab S7+', 'Samsung', 'SM-T970', '12.4-inch Android tablet with S Pen', 749.99, 40, 'galaxytabs7plus.jpg', '2022-01-06'),
  ('PRD07', 'iPad Pro', 'Apple', 'A2229', '11-inch tablet with M1 chip and Liquid Retina display', 799.99, 60, 'ipadpro.jpg', '2022-01-07'),
  ('PRD08', 'Surface Laptop 4', 'Microsoft', 'PLZ-00001', '13.5-inch laptop with AMD Ryzen 5 processor', 899.99, 20, 'surfacelaptop4.jpg', '2022-01-08'),
  ('PRD09', 'MacBook Air', 'Apple', 'MGN63LL/A', '13.3-inch laptop with M1 chip and Retina display', 1199.99, 15, 'macbookair.jpg', '2022-01-09'),
  ('PRD010', 'ThinkPad X1 Carbon', 'Lenovo', '20R1S1G700', '14-inch laptop with Intel Core i7 processor', 1299.99, 10, 'thinkpadx1carbon.jpg', '2022-01-10');

INSERT INTO Orders (order_id, reseller_id, agent_id, order_date, product_name, quantity, price, status_payment)
VALUES 
  ('ORD01', 'RS01', 'AGT01', '2023-05-01', 'iPhone 13', 5, 800.00, 'Yes'),
  ('ORD02', 'RS02', 'AGT02', '2023-05-02', 'Samsung Galaxy S21', 3, 700.00, 'No'),
  ('ORD03', 'RS01', 'AGT03', '2023-05-02', 'Google Pixel 6', 2, 600.00,'No'),
  ('ORD04', 'RS04', 'AGT04', '2023-05-03', 'OnePlus 9 Pro', 4, 900.00,'Yes'),
  ('ORD05', 'RS05', 'AGT01', '2023-05-03', 'iPhone 12', 1, 600.00,'No'),
  ('ORD06', 'RS02', 'AGT05', '2023-05-04', 'Samsung Galaxy Note 20', 6, 1000.00,'Yes'),
  ('ORD07', 'RS03', 'AGT03', '2023-05-04', 'Google Pixel 5a', 3, 450.00,'No'),
  ('ORD08', 'RS05', 'AGT02', '2023-05-04', 'Samsung Galaxy A52', 2, 300.00,'Yes'),
  ('ORD09', 'RS01', 'AGT04', '2023-05-05', 'OnePlus Nord 2', 2, 400.00,'No'),
  ('ORD010', 'RS04', 'AGT05', '2023-05-05', 'Samsung Galaxy Z Flip 3', 1, 1300.00, 'No');

INSERT INTO OrderItem (order_item_id, order_id, product_id, quantity, price)
VALUES 
  ('ORDIT1', 'ORD01', 'PRD01', 2, 800.00),
  ('ORDIT2', 'ORD01', 'PRD02', 3, 700.00),
  ('ORDIT3', 'ORD02', 'PRD03', 1, 600.00),
  ('ORDIT4', 'ORD03', 'PRD04', 4, 900.00),
  ('ORDIT5', 'ORD04', 'PRD05', 1, 600.00),
  ('ORDIT6', 'ORD04', 'PRD06', 3, 1000.00),
  ('ORDIT7', 'ORD05', 'PRD07', 2, 450.00),
  ('ORDIT8', 'ORD05', 'PRD08', 2, 300.00),
  ('ORDIT9', 'ORD06', 'PRD09', 1, 400.00),
  ('ORDIT10', 'ORD07', 'PRD010', 1, 1300.00);
