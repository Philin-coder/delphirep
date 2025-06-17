USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_att_by_stud_fio]    Script Date: 17.06.2025 20:29:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_att_by_stud_fio]
@fio nvarchar(255)
as
begin
select 
Attendance.id_attendance,
Subject.name,
Student.fio,
case when Attendance.m_status=1 then 'Присутствовал' else 'Отсутствовал' end as s_state,
Attendance.note
from Attendance 
inner join Lesson on Lesson.id_lesson=Attendance.id_lesson
inner join Subject on Subject.id_subject=Lesson.id_subject
inner join Student on Student.id_student=Attendance.id_student
where 1=1 
and Student.fio=@fio
end
GO

