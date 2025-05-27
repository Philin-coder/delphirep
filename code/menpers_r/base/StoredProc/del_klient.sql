USE [men_pers]
GO

/****** Object:  StoredProcedure [dbo].[del_klient]    Script Date: 08.11.2020 12:44:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_klient]
@klient_id int
as
begin
delete from klient where klient.klient_id=@klient_id
end
GO

