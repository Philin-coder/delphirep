USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_grade_by_t_fio]    Script Date: 18.05.2025 22:53:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create  proc [dbo].[sel_grade_by_t_fio]
@fio  varchar(255)
as
begin
select 
 Grade.id_grade,
 Student.fio as stud_fio,
 Subject.name,
 Teacher.fio as teacher_fio,
 Grade.grade_value,
 Grade.date 
from Grade 
inner join Student on Student.id_student=Grade.id_student
inner join Subject on Grade.id_subject=Subject.id_subject
inner join Teacher on Teacher.id_teacher=grade.id_teacher
where 1=1
and Teacher.fio=@fio
end
GO

