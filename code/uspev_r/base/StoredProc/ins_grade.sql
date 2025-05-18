USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_grade]    Script Date: 18.05.2025 23:08:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_grade]
@id_student int,
@id_subject int,
@id_teacher int,
@grade_value int,
@date date
as
begin
insert into Grade(id_student ,id_subject,id_teacher,grade_value,date)
values(@id_student,@id_subject,@id_teacher,@grade_value,@date)
end
GO

