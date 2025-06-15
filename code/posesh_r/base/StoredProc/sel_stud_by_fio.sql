USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_stud_by_fio]    Script Date: 15.06.2025 13:19:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_stud_by_fio]
@fio nvarchar(255)
as
begin
select 
Student.id_student,
Student.fio,
Student.email,
Student.enrollment_date,
case when Student.m_status=1 then 'Обучается' else 'Академический отпуск' end as student_st,
m_Group.group_name
from Student 
inner join m_Group on m_Group.id_group=Student.id_group
where 1=1
and Student.fio=@fio
end
GO

