USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_men]    Script Date: 09.06.2025 16:44:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_men]
@Id_manager int,
@fio  varchar(1000)
as
begin
  update manager set fio=@fio where 1=1 and manager.Id_manager=@Id_manager  
end



GO

