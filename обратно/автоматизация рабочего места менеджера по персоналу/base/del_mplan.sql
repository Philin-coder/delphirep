USE [men_pers]
GO

/****** Object:  StoredProcedure [dbo].[del_mplan]    Script Date: 08.11.2020 12:45:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_mplan]
@id_plan int
as
begin
delete from mplan where mplan.id_plan=@id_plan
end
GO

