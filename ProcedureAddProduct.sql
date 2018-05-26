/*
create procedure AddProduct
	@VendorId int, 
	@PartNumber nvarchar(50),
	@Name nvarchar(150),
	@Price decimal(10,2),
	@Unit nvarchar(25),
	@PhotoPath nvarchar(255),
	@Active bit
as
BEGIN
insert into Product
	(VendorId, PartNumber, Name, Price, Unit, PhotoPath, Active)
values
	(@VendorId, @PartNumber, @Name, @Price, @Unit, @PhotoPath, @Active)
END
go
*/

exec AddProduct @VendorId = '3', @PartNumber = '12345', @Name = 'Widget5', @Price = 123.45, @Unit = '12', @PhotoPath = 'images/default.jpg', @Active = 1;
go
select * from Product;
