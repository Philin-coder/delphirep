USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[ins_dol]    Script Date: 01.12.2020 21:46:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ins_dol]
@Nam_dol varchar(100),
@id_manager int 
as 
begin
insert into Dolshnost(Nam_dol,id_manager) values(@Nam_dol,@id_manager)
end
GO

