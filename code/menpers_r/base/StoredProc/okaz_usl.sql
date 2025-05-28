USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[okaz_usl]    Script Date: 28.05.2025 11:24:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[okaz_usl] 
 @id_usl int,
 @date_o date
 as
 begin
 update usluga set date_o=@date_o where 1=1 and  usluga.id_usl=@id_usl 
 end
GO

