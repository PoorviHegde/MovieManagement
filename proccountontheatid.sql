create procedure countontheatid
@theatreid int
as
begin
	declare @return int;
	
	set @return=(select count(ticket_id) from Ticket where theatreid=@theatreid);
	return @return
end
