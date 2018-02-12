create function login_accept 
(@uname varchar,
@pwd varchar)
returns int
as
begin
	declare @l_count int;
	select @l_count = COUNT(*) from login where UserName = @uname and Password = @pwd;
	if(@l_count is null)
		set @l_count=-1;
	return @l_count;
end
