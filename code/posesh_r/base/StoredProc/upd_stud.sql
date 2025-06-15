USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_stud]    Script Date: 15.06.2025 17:59:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_stud]
@id_student int,
@m_status  int
as
begin
  update Student set m_status=@m_status where 1=1 and Student.id_student=@id_student
end
GO

