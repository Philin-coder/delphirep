USE [men_pers]
GO

/****** Object:  StoredProcedure [dbo].[ins_mplan]    Script Date: 08.11.2020 12:47:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_mplan]
@nazv varchar(1000),
@date_n date,
@klient_id int,
@opis varchar(150),
@maneger_id int
as
begin
insert into mplan (nazv,date_n,klient_id,opis,maneger_id)values(@nazv,@date_n,@klient_id,@opis,@maneger_id)
end
GO

