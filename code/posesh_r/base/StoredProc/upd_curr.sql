USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_curr]    Script Date: 16.06.2025 12:34:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[upd_curr]
@id_curriculum int,
@id_subject int
as
begin
  update Curriculum set id_subject=@id_subject where 1=1 and Curriculum.id_curriculum=@id_curriculum
end
GO

