Use Master
IF DB_ID  ('Hotel_Managment_System_DB') IS NOT NULL
DROP Database Hotel_Managment_System_DB
GO
Create Database Hotel_Managment_System_DB
GO

ALTER DATABASE Hotel_Managment_System_DB MODIFY FILE 
(Name=N'Hotel_Managment_System_DB', Size=50MB, MaxSize=200MB, FileGrowth=5% )
GO

ALTER DATABASE Hotel_Managment_System_DB MODIFY FILE 
( Name=N'Hotel_Managment_System_DB_Log', Size = 10MB, MaxSize = 100MB, FileGrowth = 1MB)
GO


Use Hotel_Managment_System_DB
Go


Create Table Employees
(
EmployeeID int Identity primary key,
EmpName varchar(25),
[Address] varchar(25),
Phone nvarchar(25) CHECK ((Phone Like '[0][1][0-9][0-9][0-9] [0-9][0-9][0-9] [0-9][0-9][0-9]')),
Email nvarchar(25)
)
Go


Create Table RoomCatagory
(
CatagoryID int Identity primary key,
RoomType varchar(25),
RoomCatagory varchar(25)
)
Go


Create Table Rooms
(
RoomID int Identity primary key,
RoomNumber nvarchar(20),
CatagoryID int Foreign Key References RoomCatagory(CatagoryID) ON DELETE CASCADE,
Price Money
)
Go

Create Table Customers
(
CustomerID int Identity primary key,
CustomerName varchar(25),
[Address] nvarchar(25),
Phone nvarchar(20),
Email nvarchar(20)
)
Go


Create Table Booking
(
BookingID int Identity primary key,
CustomerID int Foreign Key References Customers(CustomerID),
RoomID int Foreign Key References Rooms(RoomID),
BookingDate datetime Not Null CONSTRAINT CN_BookingDate DEFAULT getdate(),
EmployeeID int Foreign Key References Employees(EmployeeID),
ArrivaalTime DateTime,
BookingType nvarchar(20)
)
Go


Create Table Payments
(
PaymentID int Identity primary key,
BookingID int Foreign Key References Booking(BookingID),
TotalAmount Money,
Discount Money,
Paid As (TotalAmount-Discount),
PaidTime datetime,
Due Money
)
Go

Create Table Cancellations
(
CancellationID int Identity,
BookingID int Foreign Key References Booking(BookingID) ON UPDATE CASCADE,
CancellationTime datetime CONSTRAINT CN_CancelDate DEFAULT getdate(),
Reason varchar(25),
CancellationDuration nvarchar(20)
)
Go


--=================================Alter Table(Add and Drop Column)=============================
Alter Table Employees
Add NID varchar(20)
Go

Alter Table Employees
Drop Column NID
Go


Create Clustered Index CI_CanID on Cancellations(CancellationID)
Go

Create NonClustered Index NCI_NID on Employees(EmpName)
Go


--Store Procedure for Employees Table
Create Proc Sp_Employee
@empid int,
@empname varchar(25),
@address varchar(25),
@phone nvarchar(25),
@email nvarchar(25),
@operationname varchar(25),
@tablename varchar(25)
AS
Begin
If  @tablename='Employees' and @operationname='Insert'
	Begin
		Insert Into Employees Values(@empname,@address,@phone,@email)
	End

If @tablename='Employees' and @operationname='Update'
	Begin
		Update Employees Set EmpName=@empname where EmployeeID=@empid
	End

If @tablename='Employees' and @operationname='Delete'
	Begin
		Delete Employees where EmployeeID=@empid
	End

If @tablename='Employees' and @operationname='Select'
	Begin
		Select * From Employees
	End
End
GO


--Instead of Trigger For Customer Table 
Create Trigger tr_InsteadTriggerCustomers ON Customers
Instead of UPDATE,DELETE
As
Begin
	Declare @rowcount int
	set @rowcount=@@ROWCOUNT
	If(@rowcount>1)
		Begin
			Raiserror('It is not Possible Insert more than 1 ,', 16, 1)
		End
			Else
		Print 'Successfully Updated Or Deleted Row'
End
Go

--After Trigger For RoomCatagory
Create Table RoomCatagory_History
(
CatagoryID int,
RoomType varchar(25),
RoomCatagory varchar(25),
AudtiAction varchar(30),
AuditTimeStamp datetime
)
Go

--After Trigger For Room Catagory Insert
Create Trigger tr_After_Insert_Catagory on dbo.RoomCatagory
For Insert
As
Declare @catagoryid int, @roomtype varchar(25),@roomcatagory varchar(25), @auditaction varchar(30)
Select @roomtype=i.RoomType from inserted as i;
Select @roomcatagory=i.RoomCatagory from inserted as i;
Set @auditaction='Row has been Inserted in RoomCatagory Table';
Insert Into RoomCatagory_History(CatagoryID,RoomType,RoomCatagory,AudtiAction,AuditTimeStamp)
Values(@catagoryid,@roomtype,@roomcatagory,@auditaction,getdate());
Print 'After Trigger Fired For Insert'
Go

--Create View With Encryption
CREATE VIEW vw_EmpInfo
With Encryption
As
Select EmployeeID,EmpName,[Address],Phone,Email
From Employees
Go

--Create View With SchemaBinding

CREATE VIEW vw_RoomDetails
With Schemabinding
As
Select RoomCatagory.CatagoryID,RoomType,RoomNumber,Price
From dbo.RoomCatagory
Join dbo.Rooms
On RoomCatagory.CatagoryID=Rooms.CatagoryID
Go


--==========================Create Tabular Function==========

Create Function fn_Tabular2()
Returns Table
As
Return
(
	Select Booking.BookingID,CustomerID,RoomID,BookingDate,PaymentID,TotalAmount,Discount,Paid
	From Booking Join Payments
	On Booking.BookingID=Payments.BookingID
)
Go

Select * From dbo.fn_Tabular2()
Go

--==========================Create Scalar Function==========

Create Function fn_TotalAmountGet()
Returns int
As 
Begin
Return
	(
	Select sum(Paid) as [Total Amount]
	From Payments
	)
End
Go

Print dbo.fn_TotalAmountGet()
Go

--===============================Transaction==Commit==RollBack=======
Create proc sp_Rooms
@roomnumber int,
@catagoryid int,
@price money,
@message varchar(30) output
As
Begin
	set nocount on
	Begin Try
		Begin Transaction
			Insert Into Rooms(RoomNumber,CatagoryID,Price)
			values (@roomnumber,@catagoryid,@price)
			set @message='Data Inserted Successfully'
			print @message
		Commit Transaction	
	End Try
	Begin Catch
		Rollback transaction
		Print 'Something Is wrong In Insert !'
	End Catch
End
Go


--=============================Create Sequence==============================
Use Hotel_Managment_System_DB
Create Sequence sq_Sequence
	As Bigint
	Start With 1
	Increment By 1
	Minvalue 1
	Maxvalue 99999
	No Cycle
	Cache 10;
	GO

Select Next value for sq_Sequence
GO
--============================Floor, Round, Ceiling============================
Declare @x decimal(10,2)=11.05
Select ROUND(@x,1)
Select Ceiling(@x)
Select Floor(@x)
GO








