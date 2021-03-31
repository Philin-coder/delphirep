USE [men_pers]
GO

/****** Object:  StoredProcedure [dbo].[ins_klient]    Script Date: 08.11.2020 12:46:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ins_klient]
@naim varchar(1000),
@otch varchar(1000),
@snmae varchar(1000),
@b_date date,
@cont varchar(1000),
@phone varchar(1000),
@email varchar(1000)
as
begin
insert into klient(naim,otch,snmae, b_date,cont,phone,email)values(@naim,@otch,@snmae,@b_date,@cont,@phone,@email)
end
GO

