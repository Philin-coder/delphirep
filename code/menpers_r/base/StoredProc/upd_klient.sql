USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_klient]    Script Date: 29.05.2025 13:07:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_klient]
@klient_id int,
@cont varchar(1000)
as
begin
update klient set cont=@cont where 1=1 and klient.klient_id=@klient_id
end
GO

