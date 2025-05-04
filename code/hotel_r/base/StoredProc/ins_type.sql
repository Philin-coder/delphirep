USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_type]    Script Date: 04.05.2025 22:13:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_type] 
@type_naim varchar(1000),
@type_opis varchar(1000)
as 
begin
insert into type_nomer(type_naim ,type_opis)values(@type_naim,@type_opis)
end
GO

