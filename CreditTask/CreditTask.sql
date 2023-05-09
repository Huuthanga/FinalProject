create table Item(
	ItemID nvarchar(50) primary key,
	ItemName nvarchar(50),
	Size nvarchar(50),
);
create table Agent(
	AgentID nvarchar(50) primary key,
	AgentName nvarchar(50),
	Address nvarchar(50),
);
create table Orders(
	OrderID nvarchar(50) primary key,
	OrderDate date,
	AgentID nvarchar(50),
	FOREIGN KEY (AgentID) REFERENCES Agent(AgentID),
);
create table OrderDetail(
	ID nvarchar(50) primary key,
	OrderID nvarchar(50),
	ItemID nvarchar(50),
	Quantity nvarchar(50),
	UnitAmount nvarchar(50),
	FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
	FOREIGN KEY (ItemID) REFERENCES Item(ItemID),
);

INSERT INTO Item (ItemID, ItemName, Size)
VALUES
('ITM001', 'Shirt', 'Medium'),
('ITM002', 'Jeans', '32'),
('ITM003', 'Dress', 'Small'),
('ITM004', 'T-shirt', 'Large'),
('ITM005', 'Skirt', 'Medium'),
('ITM006', 'Sneakers', '7'),
('ITM007', 'Sandals', '8'),
('ITM008', 'Sweater', 'Large'),
('ITM009', 'Blouse', 'Small'),
('ITM010', 'Pants', '34'),
('ITM011', 'Jacket', 'Medium'),
('ITM012', 'Shorts', '32'),
('ITM013', 'Boots', '9'),
('ITM014', 'Hat', 'One size'),
('ITM015', 'Scarf', 'One size')

INSERT INTO Agent (AgentID, AgentName, Address)
VALUES
('AGT001', 'John Doe', '123 Main St, Anytown USA'),
('AGT002', 'Jane Smith', '456 Park Ave, Anytown USA'),
('AGT003', 'Bob Johnson', '789 Elm St, Anytown USA'),
('AGT004', 'Samantha Lee', '321 Oak Rd, Anytown USA'),
('AGT005', 'David Brown', '654 Maple Ave, Anytown USA'),
('AGT006', 'Mary Taylor', '987 Pine St, Anytown USA'),
('AGT007', 'Peter Green', '246 Cedar Rd, Anytown USA'),
('AGT008', 'Emily Davis', '369 Walnut Blvd, Anytown USA'),
('AGT009', 'Alex Kim', '159 Birch Ln, Anytown USA'),
('AGT010', 'Jessica Jones', '753 Spruce St, Anytown USA'),
('AGT011', 'Steve Johnson', '852 Olive Ct, Anytown USA'),
('AGT012', 'Anna Lee', '951 Cherry Dr, Anytown USA'),
('AGT013', 'Brian Chen', '357 Mango Way, Anytown USA'),
('AGT014', 'Lucas Brown', '468 Peach Ave, Anytown USA'),
('AGT015', 'Karen Davis', '579 Lemon St, Anytown USA')

INSERT INTO Orders (OrderID, OrderDate, AgentID)
VALUES
('ORD001', '2022-01-01', 'AGT001'),
('ORD002', '2022-01-02', 'AGT002'),
('ORD003', '2022-01-03', 'AGT003'),
('ORD004', '2022-01-04', 'AGT004'),
('ORD005', '2022-01-05', 'AGT005'),
('ORD006', '2022-01-06', 'AGT006'),
('ORD007', '2022-01-07', 'AGT007'),
('ORD008', '2022-01-08', 'AGT008'),
('ORD009', '2022-01-09', 'AGT009'),
('ORD010', '2022-01-10', 'AGT010'),
('ORD011', '2022-01-11', 'AGT011'),
('ORD012', '2022-01-12', 'AGT012'),
('ORD013', '2022-01-13', 'AGT013'),
('ORD014', '2022-01-14', 'AGT014'),
('ORD015', '2022-01-15', 'AGT015')

INSERT INTO OrderDetail (ID, OrderID, ItemID,Quantity,UnitAmount)
VALUES
('DET001', 'ORD001', 'ITM001', '2', '25.99'),
('DET002', 'ORD001', 'ITM002', '1', '49.99'),
('DET003', 'ORD002', 'ITM003', '3', '35.99'),
('DET004', 'ORD002', 'ITM004', '2', '19.99'),
('DET005', 'ORD003', 'ITM005', '1', '29.99'),
('DET006', 'ORD003', 'ITM006', '1', '79.99'),
('DET007', 'ORD004', 'ITM007', '2', '39.99'),
('DET008', 'ORD004', 'ITM008', '1', '45.99'),
('DET009', 'ORD005', 'ITM009', '1', '32.99'),
('DET010', 'ORD005', 'ITM010', '1', '54.99'),
('DET011', 'ORD006', 'ITM011', '1', '89.99'),
('DET012', 'ORD006', 'ITM012', '2', '24.99'),
('DET013', 'ORD007', 'ITM013', '1', '99.99'),
('DET014', 'ORD007', 'ITM014', '1', '15.99'),
('DET015', 'ORD008', 'ITM015', '2', '19.99')

select * from OrderDetail