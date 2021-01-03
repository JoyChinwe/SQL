--/****How to create  new database*****

create database Customer

use customer

----Create a table stsatement-Customer
create table Customer
(
   CustomerID int primary key(1,1),
   FirstName varchar (50),
   LastName varchar (50),
   Age int,
   City varchar (50)

)

----Insert Statements
insert into dbo.Customer (FirstName,LastName,Age,CustomerID,City)
Values ('Sam', 'Blue', 40,1233,'Aberdeen')
insert into dbo.Customer (FirstName,LastName,Age,CustomerID, City)
Values ('Mike', 'Berry', 45,1234,'Glasgow')
insert into dbo.Customer (FirstName,LastName,Age,CustomerID,City )
Values ('Jerry', 'Green', 50, 1235, 'London')
insert into dbo.Customer (FirstName,LastName,Age,CustomerID, City)
Values ('Oralo', 'Joe', 50, 1236, 'Bailliston')
insert into dbo.Customer (FirstName,LastName,Age,CustomerID, City)
Values ('Joy', 'Brown', 55,1237,'Parkhead')
insert into dbo.Customer (FirstName,LastName,Age,CustomerID, City)
Values ('Samuel', 'okoro', 60,1238,'Barlanark')
insert into dbo.Customer (FirstName,LastName,Age,CustomerID,CITY)
Values ('Sunny', 'lawson', 65,1239,'Estern')

select * from Customer