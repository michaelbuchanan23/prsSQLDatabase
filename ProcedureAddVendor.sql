/*
create procedure AddVendor
	@Code nvarchar(255),
	@Name nvarchar (30),
	@Address nvarchar (255),
	@City nvarchar (255),
	@State nvarchar (2),
	@Zip nvarchar (5),
	@Phone nvarchar (12),
	@Email nvarchar (255),
	@IsPreApproved bit,
	@Active bit
as
BEGIN
insert into Vendor
	(Code, Name, Address, City, State, Zip, Phone, Email, IsPreApproved, Active)
values
	(@Code, @Name, @Address, @City, @State, @Zip, @Phone, @Email, @IsPreApproved, @Active)
END
go
*/

exec AddVendor @Code = 'BBT', @Name = 'BB&T Bank', 	@Address = '123 Elm Street', @City = 'Raleigh', @State = 'NC', @Zip = '27513', @Phone = '8005551234', @Email = 'BBT@email.com', @IsPreApproved = 1, @Active = 1;
go
select * from vendor;
