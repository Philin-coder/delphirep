USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_t_by_fio]    Script Date: 17.06.2025 12:49:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_t_by_fio]
@fio nvarchar(255)
as
begin
select 
 Lesson.id_lesson,
 Subject.name,
 Teacher.fio,
 Lesson.date,
 Lesson.time_start,
 Lesson.time_end,
 case when Lesson.l_type=1 then 'лекция' else 'практика' end as l_type
from Lesson 
inner join Subject on Subject.id_subject=Lesson.id_subject
inner join Teacher on Teacher.id_teacher=Lesson.id_teacher
where 1=1
and Teacher.fio=@fio
end
GO

