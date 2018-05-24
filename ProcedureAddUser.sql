--Customers by state sorted
--create then alter a procedure that paramater: State, List customers in state, sorted by city
/*
create procedure AddUser
	@Username nvarchar(30),
	@Password nvarchar (30),
	@Firstname nvarchar (30),
	@Lastname nvarchar (30),
	@Phone nvarchar (12),
	@Email nvarchar (255),
	@IsReviewer bit,
	@IsAdmin bit,
	@Active bit
as
BEGIN
insert into [User]
	(Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin, Active)
values
	(@Username, @Password, @Firstname, @Lastname, @Phone, @Email, @IsReviewer, @IsAdmin, @Active)
END
go
*/
exec AddUser @Username = 'reviewer1', @Password = 'reviewer1', @Firstname = 'Reviewer', @Lastname = 'One', @Phone = '8005550001', @Email = 'reviewer1@email.com', @IsReviewer = 1, @IsAdmin = 0, @Active = 1;
go
select * from [user];