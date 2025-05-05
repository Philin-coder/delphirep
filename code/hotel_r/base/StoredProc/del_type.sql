USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[del_type]    Script Date: 05.05.2025 20:18:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_type]
@id_type_nomer int
as
begin
delete from type_nomer where 1=1 and type_nomer.id_type_nomer=@id_type_nomer
end

GO

