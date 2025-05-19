USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[del_grade]    Script Date: 19.05.2025 11:45:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_grade]
@id_grade int
as
begin
delete from Grade where 1=1 and grade.id_grade=@id_grade
end
GO

