USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_dol_by_naim]    Script Date: 09.06.2025 19:58:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_dol_by_naim]
@Nam_dol varchar(1000)
as
begin
select 
   Dolshnost.N_Dol,
   Dolshnost.Nam_dol,
   manager.fio
   from Dolshnost 
   inner join manager on manager.Id_manager=Dolshnost.Id_manager
where 1=1
and Dolshnost.Nam_dol=@Nam_dol
end



GO

