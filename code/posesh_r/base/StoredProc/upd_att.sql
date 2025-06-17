USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_att]    Script Date: 17.06.2025 23:27:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_att] 
@id_attendance int,
@note nvarchar(255)
as
begin
  update Attendance set note=@note where 1=1 and Attendance.id_attendance=@id_attendance
end
GO

