USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[dee_att]    Script Date: 17.06.2025 23:47:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[dee_att]
@id_attendance int
as
begin
  delete from Attendance where 1=1 and Attendance.id_attendance=@id_attendance
end
GO

