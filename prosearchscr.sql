create procedure searchscreen
@tid int,
@movie_id int,
@time varchar,
@scr_no int out
as
begin

	select @scr_no=Screen_No from Time where TheatreId=@tid and movie_id=@movie_id and time=@time
end
