USE [men_pers]
GO

/****** Object:  StoredProcedure [dbo].[del_pass]    Script Date: 08.11.2020 12:45:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_pass]
@user_id int
as
begin
delete from usver where usver.user_id=@user_id
end
GO

