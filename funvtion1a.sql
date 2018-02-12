SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[loginfunc]
    (
    @uname varchar(25),
	@pwd varchar(25)
    )
RETURNS int
AS
    BEGIN
    DECLARE @l_count int
    select @l_count = COUNT(*) from [Login] where UserName = @uname and Password = @pwd;
	if(@l_count is null)
		set @l_count=-1;
    RETURN @l_count
    END