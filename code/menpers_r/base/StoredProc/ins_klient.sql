USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_klient]    Script Date: 29.05.2025 11:06:44 ******/
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
@id_plan int,
@id_usl int,
@email varchar(1000)
as
begin
insert into klient(naim,otch,snmae, b_date,cont,phone,id_plan,id_usl,email)
values(@naim,@otch,@snmae,@b_date,@cont,@phone,@id_plan,@id_usl, @email)
end
GO

