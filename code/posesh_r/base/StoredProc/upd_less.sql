USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_less]    Script Date: 17.06.2025 18:23:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_less]
@id_lesson int,
@l_date date
as
begin
  update Lesson set date=@l_date where 1=1 and Lesson.id_lesson=@id_lesson
end
GO

