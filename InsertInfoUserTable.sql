--insert reviewer/admin/neither of those privs
insert into [User]
	(Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin, Active)
values
	('user1','user1','firstnameuser1','lastnameuser1','123456789','user1@email.com',1,0,1);

insert into [User]
	(Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin, Active)
values
	('user2','user2','firstnameuser2','lastnameuser2','123456789','user2@email.com',0,1,1);
	
insert into [User]
	(Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin, Active)
values
	('user3','user3','firstnameuser3','lastnameuser3','123456789','user3@email.com',0,0,1);

select * from [user];