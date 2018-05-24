--vendors = walmart, costco, staples, office depot, etc.
insert into Vendor
	(Code, Name, Address, City, State, Zip, Phone, Email, IsPreApproved, Active)
values
	('AMZN', 'Amazon', '123 Main Street', 'Seattle', 'WA', '98101', '8005555555', 'amazon@email.com', 1, 1),
	('WMT', 'Walmart', '702 S.W. 8th Street', 'Bentonville', 'AR', '72716', '8005555551', 'walmart@email.com', 1, 1),
	('SPLS', 'Staples', '500 Staples Drive', 'Framingham', 'MA', '01702', '8005555552', 'staples@email.com', 0, 1);
select * from Vendor;