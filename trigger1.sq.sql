create trigger screentrigger on [screen]
for insert
as
begin
	declare @s_n int;
	declare @t_i int;

	select @s_n=i.screen_no from inserted i;
	select @t_i=i.TheatreId from inserted i;

	insert into[Screen]
	(Screen_No,TheatreId,Capacity)
	values(@s_n,@t_i,220);

	PRINT 'We set the capacity to a default of 220'
end
GO
