USE [men_pers]
GO

/****** Object:  StoredProcedure [dbo].[okaz_usl]    Script Date: 08.11.2020 12:48:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[okaz_usl] 
 @id_usl int,
 @klient_id int,
 @date_o date
 as
 begin
 update usluga set date_o=@date_o where usluga.id_usl=@id_usl and usluga.klient_id=@klient_id
 end
GO

