USE [moviemanagement]
GO
/****** Object:  StoredProcedure [dbo].[searchscreen]    Script Date: 06-11-2017 11:29:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[searchscreen]
@theatreid int
as
begin
	declare @return int;
	
	set @return=(select count(*) from Ticket where ticket.theatreid=@theatreid);
	return @return
end