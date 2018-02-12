create procedure createscreen
@scr_no int,
@theatreid int,
@capacity int
as
Begin
	Insert into Screen values(@scr_no,@theatreid,@capacity)
End