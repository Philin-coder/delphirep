USE [store_r]
GO

/****** Object:  StoredProcedure [dbo].[del_good]    Script Date: 16.04.2025 18:45:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_good]
@id_good int
as
begin
delete from good where good.id_good=@id_good
end
GO

