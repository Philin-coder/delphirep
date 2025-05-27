USE [men_pers]
GO

/****** Object:  StoredProcedure [dbo].[ins_usluga]    Script Date: 08.11.2020 12:48:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_usluga]
@opis varchar(150),
@cost decimal(10,2),
@klient_id int
as
begin
insert into usluga(opis,cost,klient_id) values(@opis,@cost,@klient_id)
end
GO

