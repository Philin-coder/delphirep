USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[report1]    Script Date: 19.05.2025 11:58:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[report1]
@d1 date,
@d2 date
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
and Grade.date between @d1 and @d2
end
GO

