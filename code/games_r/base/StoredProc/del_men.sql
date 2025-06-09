USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[del_men]    Script Date: 09.06.2025 17:10:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_men]
@Id_manager int
as
begin
  delete from manager where 1=1 and manager.Id_manager=@Id_manager
end


GO

