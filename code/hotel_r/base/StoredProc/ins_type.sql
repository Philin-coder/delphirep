USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_type]    Script Date: 05.05.2025 13:50:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ins_type] 
@type_naim varchar(1000),
@type_opis varchar(1000),
@type_image varbinary(MAX) = NULL
as 
begin
insert into type_nomer(type_naim ,type_opis,type_image)values(@type_naim,@type_opis,@type_image)
end
GO

