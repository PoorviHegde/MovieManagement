create procedure maptiming
@theatreid int,
@scrno int,
@city varchar(25),
@mid int,
@time varchar(25)
as
Begin
	insert into Time values(@theatreid,@scrno,@city,@mid,@time);
End