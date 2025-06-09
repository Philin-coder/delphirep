USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_dol]    Script Date: 09.06.2025 20:00:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ins_dol]
@Nam_dol varchar(1000),
@id_manager int 
as 
begin
insert into Dolshnost(Nam_dol,id_manager) values(@Nam_dol,@id_manager)
end
GO

