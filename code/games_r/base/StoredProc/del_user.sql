USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[del_user]    Script Date: 09.06.2025 12:16:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_user]
@usverId int
as
begin
  delete from usver where 1=1 and usver.usverId=@usverId
end
GO

