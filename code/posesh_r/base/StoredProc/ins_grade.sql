USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_grade]    Script Date: 16.06.2025 22:21:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_grade]
@id_student int,
@id_subject int,
@id_teacher int,
@grade_value int,
@g_date date
as
begin
  insert into Grade(id_student,id_subject,id_teacher,grade_value,g_date)values
  (@id_student,@id_subject,@id_teacher,@grade_value,@g_date)
end
GO

