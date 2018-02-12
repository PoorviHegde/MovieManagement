create procedure createticket
@tid int,
@cpt int,
@scrno int,
@seat varchar(25),
@time varchar(25),
@theatreid int
as
Begin
	insert into Ticket values(@tid,@cpt,@scrno,@seat,@time,@theatreid);
End