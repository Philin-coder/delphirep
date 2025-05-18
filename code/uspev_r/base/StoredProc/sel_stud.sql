USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_stud]    Script Date: 18.05.2025 17:45:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_stud]
@group_name varchar(255)
as
begin
select 
Student.id_student,
Student.fio,
Student.group_name,
Student.email
from Student 
where 1=1
and Student.group_name=@group_name

end
GO

