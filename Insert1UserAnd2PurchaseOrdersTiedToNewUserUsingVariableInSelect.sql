insert into [User]
	(Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin, Active)
values
	('2Requests', '2Requests', 'Two', 'Requests', '800-555-1234', '2requests@email.com', 1, 1, 1);
go

---------------------------------------------------------------------

declare @userid int;
	select @userid = Id from [User] where Username = '2Requests';


Insert into PurchaseRequest
	(UserId, Description, Justification, DeliveryMode, Status, Total, Active, ReasonForRejection)
values
	(@userid, 'Widget1', 'Need widget 1', 'Drone', 'in air', 100, 1, 'n/a')


Insert into PurchaseRequest
	(UserId, Description, Justification, DeliveryMode, Status, Total, Active, ReasonForRejection)
values
	(@userid, 'Widget2', 'Need widget 2', 'USPS', 'out', 200, 1, 'n/a')
go
---------------------------------------------------------------------

declare @userid int;
	select @userid = Id from [User] where Username = '2Requests';
select * from [User] where Id = @userid;
select * from PurchaseRequest where UserId = @userid;