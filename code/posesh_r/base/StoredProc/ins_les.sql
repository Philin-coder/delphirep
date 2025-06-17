USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_les]    Script Date: 17.06.2025 16:09:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_les]
@id_subject int,
@id_teacher int,
@l_date date,
@time_start time(7),
@time_end time(7),
@l_type int
as
begin
  insert into Lesson(id_subject,id_teacher,date,time_start,time_end,l_type)
  values(@id_subject,@id_teacher,@l_date,@time_start,@time_end,@l_type)
end
GO

