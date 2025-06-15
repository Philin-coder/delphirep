USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[del_stud]    Script Date: 15.06.2025 18:27:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_stud]
@id_student int
as
begin
  delete from Student where 1=1 and Student.id_student=@id_student
end
GO

