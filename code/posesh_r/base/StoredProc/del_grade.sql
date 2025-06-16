USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[del_grade]    Script Date: 16.06.2025 23:28:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_grade]
@id_grade int
as
begin
  delete from Grade where 1=1 and Grade.id_grade=@id_grade
end
GO

