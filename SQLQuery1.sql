create procedure proccount
@theatreid int
as
begin
	declare @return int;
	
	set @return=(select count(*) from Ticket where ticket.theatreid=@theatreid);
	return @return
end
