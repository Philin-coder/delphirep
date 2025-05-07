USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[del_nom]    Script Date: 07.05.2025 16:16:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_nom] 
@nomer_id int
as
begin
delete from nomer where 1=1 and nomer.nomer_id=@nomer_id
end

GO

