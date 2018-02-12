create procedure createcinema
@tid int,
@name varchar(25),
@city varchar(25),
@numofscr int
as
Begin
	Insert into Theatre values(@tid,@name,@city,@numofscr)
End
