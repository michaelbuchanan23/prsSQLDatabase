/*
create procedure AddPurchaseRequest
	@UserId int,
	@Description nvarchar(100),
	@Justification nvarchar(255),
	@DeliveryMode nvarchar(25),
	@Status nvarchar(10),
	@Total decimal(10,2),
	@Active bit,
	@ReasonForRejection nvarchar(100)
as
BEGIN
insert into PurchaseRequest
	(UserId, Description, Justification, DeliveryMode, Status, Total, Active, ReasonForRejection)
values
	(@UserId, @Description, @Justification, @DeliveryMode, @Status, @Total, @Active, @ReasonForRejection)
END
go
*/

exec AddPurchaseRequest @UserId = '2', @Description = 'Cool Widget', @Justification = 'Business needs it', @DeliveryMode = 'UPS', @Status = 'Shipped', @Total = '123.45', @Active = 1, @ReasonForRejection = 'n/a';
go
select * from PurchaseRequest;
