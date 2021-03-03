Use Hotel_Managment_System_DB
Go

Insert Into Employees Values ('Sayed Sakil','Lohagar,Chittagong','01451 250 102','sakil@gmail'),
('Abid Mahmud','Raozan,Chittagong','01451 540 879','abir@gmail'),
('Zahidul Islam','Shatkania,Chittagong','01881 142 010', 'zahid.ctg@gmail'),
('Anisul Islam','Rangunia,Chittagong','01781 520 010', 'ritu@gmail'),
('Abul Hassan','Chawkbazar,Chittagong','01981 142 010', 'tarek@gmail'),
('Moin Ahmed','LalkhanBazar,Chittagong','01654 142 010', 'shahid@gmail'),
('Iqbal Hossain','Noapara,Chittagong','01781 951 010', 'fokrul@gmail'),
('Hassan Wahid','Madunaghat,Chittagong','01781 142 525', 'naim@gmail'),
('Elias Hossain','CNB,Chittagong','01879 142 010', 'aziz@gmail'),
('Mohammad Aslam','Agrabad,Chittagong','01545 521 010', 'kala@gmail'),
('Shawn Aslam','GEC,Chittagong','01654 152 050', 'abid@gmail'),
('Mazhar Pritam','Muradpur,Chittagong','01985 142 010', 'ringkel@gmail')
Go

Insert Into RoomCatagory Values('AC','Single Bed'),('AC','Double Bed'),('Non-AC','Single Bed'),('AC','Double Bed'),
('AC','Apartment'),('Non-AC','Apartment')
Go



Insert Into Rooms Values('101',1,2000),('102',2,5000),('103',3,1000),('104',4,3000),('105',5,6000),('106',6,9000),
('201',1,2000),('202',2,5000),('203',3,1000),('204',4,3000),('205',5,6000),('206',6,9000),
('301',1,2000),('302',2,5000),('303',3,1000),('304',4,3000),('305',5,6000),('306',6,9000),
('401',1,2000),('402',2,5000),('403',3,1000),('404',4,3000),('405',5,6000),('406',6,9000),
('501',1,2000),('502',2,5000),('503',3,1000),('504',4,3000),('505',5,6000),('506',6,9000)
Go


Insert Into Customers Values ('Sayed Sakil','Lohagar,Chittagong','01451 250 102','sakil@gmail'),
('Abid Mahmud','Raozan,Chittagong','01451 540 879','abir@gmail'),
('Zahidul Islam','Shatkania,Chittagong','01881 142 010', 'zahid.ctg@gmail'),
('Anisul Islam','Rangunia,Chittagong','01781 520 010', 'ritu@gmail'),
('Abul Hassan','Chawkbazar,Chittagong','01981 142 010', 'tarek@gmail'),
('Moin Ahmed','LalkhanBazar,Chittagong','01654 142 010', 'shahid@gmail'),
('Iqbal Hossain','Noapara,Chittagong','01781 951 010', 'fokrul@gmail'),
('Hassan Wahid','Madunaghat,Chittagong','01781 142 525', 'naim@gmail'),
('Elias Hossain','CNB,Chittagong','01879 142 010', 'aziz@gmail'),
('Mohammad Aslam','Agrabad,Chittagong','01545 521 010', 'kala@gmail'),
('Shawn Aslam','GEC,Chittagong','01654 152 050', 'abid@gmail'),
('Mazhar Pritam','Muradpur,Chittagong','01985 142 010', 'ringkel@gmail'),
('Ahmed Sakil','Lohagar,Chittagong','01987 250 102','ahmed@gmail'),
('Abid Shekh','Raozan,Chittagong','01451 540 910','abid@gmail'),
('Karim Islam','Shatkania,Chittagong','01987 420 010', 'karimctg@gmail'),
('Ratul Islam','Rangunia,Chittagong','01987 470 010', 'ritu@gmail'),
('Kabul Hassan','Chawkbazar,Chittagong','01828 142 010', 'kabul@gmail'),
('Niloy Ahmed','LalkhanBazar,Chittagong','01654 142 456', 'moin@gmail'),
('Daud Ibrahim','Noapara,Chittagong','01789 945 010', 'daud@gmail'),
('Naim Wahid','Madunaghat,Chittagong','01922 142 525', 'wahid@gmail'),
('Aziz Hossain','CNB,Chittagong','01879 142 087', 'aziz@gmail'),
('Arefin Fardu','Agrabad,Chittagong','01545 171 010', 'arefin@gmail'),
('Aslam Shawn','GEC,Chittagong','01654 152 852', 'aslamshawn@gmail'),
('Mazhar Khan','Muradpur,Chittagong','01985 254 010', 'khan@gmail')
Go


Insert Into Booking Values(1,1,'05-01-2019',5,'05-01-2019','Instant'),
(2,2,'05-01-2019',5,'05-01-2019','Instant'),
(3,3,'05-01-2019',5,'05-01-2019','Instant'),
(4,4,'05-01-2019',5,'05-01-2019','Instant'),
(5,5,'05-01-2019',5,'05-01-2019','Instant'),
(6,6,'05-01-2019',5,'05-01-2019','Instant'),
(7,7,'05-01-2019',5,'05-01-2019','Instant'),
(8,8,'05-01-2019',5,'05-01-2019','Instant'),
(9,9,'05-01-2019',5,'05-01-2019','Online'),
(10,10,'05-02-2019',5,'05-02-2019','Instant'),
(11,11,'05-02-2019',5,'05-02-2019','Instant'),
(12,12,'05-02-2019',5,'05-02-2019','Instant'),
(13,13,'05-02-2019',5,'05-02-2019','Instant'),
(14,14,'05-02-2019',5,'05-02-2019','Instant'),
(15,15,'05-03-2019',5,'05-03-2019','Online'),
(16,16,'05-03-2019',5,'05-03-2019','Instant'),
(17,17,'05-03-2019',5,'05-03-2019','Instant'),
(18,18,'05-03-2019',5,'05-03-2019','Instant'),
(19,19,'05-03-2019',5,'05-03-2019','Online'),
(20,20,'05-03-2019',5,'05-03-2019','Instant')
Go


Insert Into Payments Values(1,4000,500,'05-03-2019',Null),
(2,10000,100,'05-03-2019',Null),
(3,3000,300,'05-03-2019',Null),
(4,9000,100,'05-03-2019',Null),
(5,12000,1500,'05-03-2019',Null),
(6,18000,2000,'05-03-2019',Null),
(7,4000,500,'05-04-2019',Null),
(8,15000,1000,'05-04-2019',Null),
(9,4000,500,'05-04-2019',Null),
(10,9000,500,'05-04-2019',Null),
(11,12000,1000,'05-04-2019',Null),
(12,27000,2000,'05-05-2019',Null)
GO

Insert Into Cancellations Values(15,'05-03-2019','Flight Delay','1 Day Before Come'),
(19,'05-03-2019','Flight Delay','1 Day Before Come')

--=============================Update=================================================

Update RoomCatagory set RoomType='Non-AC' where CatagoryID=4
Go

Update Booking
Set ArrivaalTime=Null
Where BookingID=15
Go

Update Booking
Set ArrivaalTime=Null
Where BookingID=19
Go
--===============================Delete======================================================
Delete Employees
Where EmployeeID=12
Go
--==============================Select======================================================
Select * From Employees
Select * From RoomCatagory
Select * From Rooms
Select * From Customers
Select * From Payments
Select * From Cancellations
Select * From Booking
Go
--=========================================Cast,Concatenation
SELECT 'Today : ' + CAST(GETDATE() as varchar)
Go
--=========================================Convert and Different Date Format
SELECT 'Today : ' + CONVERT(varchar,GETDATE(),1)
SELECT 'Today : ' + CONVERT(varchar,GETDATE(),2)
SELECT 'Today : ' + CONVERT(varchar,GETDATE(),3)
SELECT 'Today : ' + CONVERT(varchar,GETDATE(),4)
SELECT 'Today : ' + CONVERT(varchar,GETDATE(),5)
SELECT 'Today : ' + CONVERT(varchar,GETDATE(),6)
Go

--========================================While Loop

Declare @p int
Set @p=10
While @p<=20
Begin
		Print 'Your Provided Value : ' + CAST(@p as Varchar)
		Set @p=@p+2
End
Go

--==============================Case===========================
Select RoomID, CatagoryID,
	Case CatagoryID
	When 1 then 'AC Single Bed'
	When 2 then 'AC Double Bed'
	When 3 then 'Non-AC Single Bed'
	When 4 then 'Non-AC Double Bed'
	When 5 then 'AC Apartment'
	When 6 then 'Non-AC Apartment'
		Else 'Not In Catagory'
End	 
From Rooms
Go

--========================= Sub Query==============================
Select * 
From Payments
Where Paid in(Select Paid From Payments Where Paid>5000)
Go


--========================= Nested Query==============================
Select * 
From Payments
Where Paid in(Select Paid From Payments Where Paid>5000) and 
Discount in(Select Discount From Payments Where Discount>500)
Go


--=========================Inner Join=========================
Select RoomCatagory.CatagoryID,RoomType,RoomID,RoomNumber,Price
From RoomCatagory
Join Rooms
On RoomCatagory.CatagoryID=Rooms.CatagoryID
Go

--=========================Left Join=========================
Select BookingID,Booking.CustomerID,RoomID,BookingDate,EmployeeID,ArrivaalTime,BookingType,Customers.CustomerID,CustomerName,Phone,Email,[Address]
From Booking
Left Join Customers
On Booking.CustomerID=Customers.CustomerID
Go

--=========================Right Join=========================

 Select BookingID,Booking.CustomerID,RoomID,BookingDate,EmployeeID,ArrivaalTime,BookingType,Customers.CustomerID,CustomerName,Phone,Email,[Address]
From  Customers
Right Join Booking
On Booking.CustomerID=Customers.CustomerID
Go

--=========================Full Join===========================
Select PaymentID,Booking.BookingID,RoomID,TotalAmount,Discount,Paid,PaidTime
From Payments
Full Join Booking
On Payments.BookingID=Booking.BookingID
Go

--=============================Self Join=========================
Select r.RoomID,r.RoomNumber,o.Price,o.CatagoryID
From Rooms as r, Rooms as o
Where r.RoomID<>o.RoomID
Go

--=============================Cross Join===========================
Select RoomID,RoomNumber,Price
From Rooms
Cross Join RoomCatagory
Go

--==========================Distinct Keyword========================
Select Distinct CustomerID,BookingID,RoomID,BookingDate,BookingType 
From Booking
Go

--===========================Intersection Operator==================
Select BookingID From Booking
Interrsection
Select BookingID From Payments
GO

--=================================6 Basic Clause===============
Select PaymentID,Paid,Count(*) as [Payment Get]
From Payments
Where Due is null
Group By PaymentID,Paid
Having COUNT(*)>0
Order By Paid


--==============================WildCard==========================
Select *
From Employees
Where EmpName Like '% Islam'
Go

--=============================Select Into============================

Select *
Into #tempRoomCatagory
From RoomCatagory
Go

--=========================Drop Table===================================

Drop Table #tempRoomCatagory
Go

--===========================CTE========================================= 
WITH RoomCount(RoomID,CatagoryID)
As
(
Select CatagoryID, Count(*) as TotalRoom
From Rooms
Group By CatagoryID
)
Select RoomID,Price
From Rooms
Join RoomCatagory
On Rooms.CatagoryID=RoomCatagory.CatagoryID
Order By RoomID
Go


--==========Cast==============Convert===================Concatenation
SELECT 'Today : ' + CAST(GETDATE() as varchar) as [Cast Date]
Go

SELECT 'Today : ' + CONVERT(varchar,GETDATE(),1) as [Convert date]
Go

--========================Mathematical Operator===========================
declare @x decimal=55
declare @y decimal=20

Select @x+@y as [Sum]

Select @x-@y as [Substraction]

Select @x*@y as [Multiplication]

Select @x/@y as [Divide]

Select @x%@y as [Remainder]
Go


--================================Union=======================================
Select CatagoryID as CatID From RoomCatagory
Union
Select RoomID as ROOMID From Rooms
Go

--==============================Union All=====================================
Select BookingID From Booking
Union All
Select PaymentID From Payments
Go

--======================================RollUp================================
Select RoomID,CatagoryID
From Rooms
Group By RoomID,CatagoryID With RollUp
Go

--======================================Cube===================================
Select RoomID,RoomNumber,Sum(CatagoryID) As[Total Catagory]
From Rooms
Group By RoomID,RoomNumber With Cube
Go

--===================================Grouping Sets================================
Select RoomID,RoomNumber,Sum(CatagoryID) As[Total Catagory]
From Rooms
Group By Grouping Sets
(
(RoomID,RoomNumber,CatagoryID),
(RoomID,RoomNumber),
(RoomID)
)
Go

--========================Between===All===Any===And===Or===Not==========================

SELECT * FROM Employees
WHERE (EmpName = 'Jahedul Islam' AND EmployeeID <> 3)
OR (EmployeeID = 10);
SELECT * FROM Employees
Where EmpName NOT IN ('Naim wahid') 
SELECT * FROM Employees
WHERE EmployeeID BETWEEN 2 AND 4;
SELECT * FROM Employees
WHERE EmpName > ANY (Select EmpName From Employees Where EmployeeID>2);
SELECT * FROM Employees
WHERE EmpName > ANY (Select EmpName From Employees Where EmployeeID>2);
Go


