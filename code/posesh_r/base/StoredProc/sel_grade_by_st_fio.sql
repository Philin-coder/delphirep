USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_grade_by_st_fio]    Script Date: 16.06.2025 19:42:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_grade_by_st_fio]
@fio nvarchar(255)
as
begin
select 
Grade.id_grade,
Student.fio,
Subject.name,
Teacher.fio,
Grade.grade_value,
Grade.g_date
from Grade 
inner join Student on Student.id_student=Grade.id_student
inner join Subject on Subject.id_subject=Grade.id_subject
inner join Teacher on Teacher.id_teacher=Grade.id_teacher
where 1=1
and Student.fio=@fio
end
GO

