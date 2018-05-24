use master;
go

drop database if exists prssql;
go

create database prssql;
go

use prssql;
go

create table [User]	
(
	Id int not null identity(1,1) primary key,
	Username nvarchar(30) not null , --we want this to be unique/the create unique index is done in the code below this
	Password nvarchar (30) not null, --case sensitive which will require a function down the line
	Firstname nvarchar (30) not null,
	Lastname nvarchar (30) not null,
	Phone nvarchar (12) not null,
	Email nvarchar (255) not null,
	IsReviewer bit not null default 0, --security level affecting what user can do
	IsAdmin bit not null default 0, --security level affecting what user can do
	Active bit not null default 1, --disallows user from logging in even if all other information is in the table
);
go

create unique index uix_username on [User](Username);
go

--drop table vendor;

create table Vendor
(
	Id int not null identity(1,1) primary key,
	Code nvarchar(30) not null , --
	Name nvarchar (255) not null,
	Address nvarchar (255) not null,
	City nvarchar (255) not null,
	State nvarchar (2) not null,
	Zip nvarchar (5) not null,
	Phone nvarchar (12) not null,
	Email nvarchar (255) not null,
	IsPreApproved bit not null default 0,
	Active bit not null default 1
);
go

create unique index vix_code on Vendor(Code);
go

--drop table Product;

create table Product
(
	Id int not null identity(1,1) primary key,
	VendorId int not null foreign key references Vendor(Id), 
	PartNumber nvarchar (50) not null, --unique
	Name nvarchar (150) not null,
	Price decimal (10,2) not null,
	Unit nvarchar (25) not null,
	PhotoPath nvarchar (255),
	Active bit not null default 1
);
go

create unique index pnix_code on Product(PartNumber);
go

create table PurchaseRequest
(
	Id int not null identity(1,1) primary key,
	UserId 	int not null foreign key references [User](Id),
	Description nvarchar(100) not null,
	Justification nvarchar(255) not null,
	DeliveryMode nvarchar(25) not null,
	Status nvarchar(10) not null default 'NEW',
	Total decimal(10,2) not null default 0,
	Active bit not null default 1,
	ReasonForRejection nvarchar(100)
);
go

create table PurchaseRequestLineitem
(
	Id int not null identity(1,1) primary key,
	PurchaseRequestId int not null foreign key references PurchaseRequest(Id),
	ProductId int not null foreign key references Product(Id),
	Quantity int not null default 1,
	Active bit not null default 1
);
go