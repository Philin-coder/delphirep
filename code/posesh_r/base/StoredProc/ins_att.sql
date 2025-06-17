USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_att]    Script Date: 17.06.2025 23:02:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_att]
@id_lesson int,
@id_student int,
@m_status int,
@note nvarchar(255)
as
begin
  insert into Attendance(id_lesson,id_student ,m_status,note)values
  (@id_lesson,@id_student,@m_status,@note)
end
GO

