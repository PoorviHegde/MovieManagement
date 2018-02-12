create procedure createmovie
@mid int,
@title varchar(25),
@rating int,
@production varchar(25),
@director varchar(25)
as
Begin
Insert into Movie values(@mid,@title,@rating,@production,@director)
End