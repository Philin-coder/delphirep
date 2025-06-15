USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_subj]    Script Date: 15.06.2025 22:46:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_subj]
@id_subject int,
@credits int
as
begin
  update Subject set credits=@credits where 1=1 and Subject.id_subject=@id_subject
end
GO

