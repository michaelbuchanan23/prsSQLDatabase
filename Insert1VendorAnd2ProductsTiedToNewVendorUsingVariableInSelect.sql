insert into Vendor
	(Code, Name, Address, City, State, Zip, Phone, Email, IsPreApproved, Active)
values
	('AMAZ', 'Amazon', '123 Any Street', 'Seattle', 'WA', '98101', '555-555-5555', 'amazon@email.com', 1, 1);
go

declare @vendorid int;
	select @vendorid = Id from Vendor where code = 'AMAZ';

Insert into Product
	(VendorId, PartNumber, Name, Price, Unit, PhotoPath, Active)
values
	(@vendorid, 'Echo', 'Amazon Echo', 99.99, 'Each', null, 1);
go

select * from vendor;
select * from product;
