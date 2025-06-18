USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[report1]    Script Date: 18.06.2025 0:02:05 ******/
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
and Lesson.date between @d1 and @d2
end
GO

