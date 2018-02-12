create procedure screensearch1
 @tid int,
 @movie_id int,
 @time varchar(25)
as
begin
   
declare @return int;


	set @return=(select Screen_No from Time where TheatreId=@tid and movie_id=@movie_id and time=@time);
	return @return;

end
