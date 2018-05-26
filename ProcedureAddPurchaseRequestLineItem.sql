/*
create procedure AddPurchaseRequestLineItem
	@PurchaseRequestId int,
	@ProductId int ,
	@Quantity int,
	@Active bit
as
BEGIN
insert into PurchaseRequestLineItem
	(PurchaseRequestId, ProductId, Quantity, Active)
values
	(@PurchaseRequestId, @ProductId, @Quantity, @Active)
END
go
*/

exec AddPurchaseRequestLineItem @PurchaseRequestId = 1, @ProductId = 1, @Quantity = 9, @Active = 1;
go
select * from PurchaseRequestLineItem;