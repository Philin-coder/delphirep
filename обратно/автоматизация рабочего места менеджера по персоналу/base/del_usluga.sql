USE [men_pers]
GO

/****** Object:  StoredProcedure [dbo].[del_usluga]    Script Date: 08.11.2020 12:46:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_usluga]
@id_usl int
as
begin
delete from usluga where usluga.id_usl=@id_usl
end
GO

