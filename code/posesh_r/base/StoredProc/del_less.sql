USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[del_less]    Script Date: 17.06.2025 18:43:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_less]
@id_lesson int
as
begin
  delete from Lesson where 1=1 and Lesson.id_lesson=@id_lesson
end
GO

