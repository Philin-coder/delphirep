USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_teacher_by_fio]    Script Date: 17.05.2025 17:11:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_teacher_by_fio]
  @fio varchar(255)
  as
  begin
select 
  Teacher.id_teacher, 
  Teacher.fio,
  Teacher.department
from Teacher
where 1=1
and Teacher.fio=@fio
end
GO

