USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[del_subj]    Script Date: 15.06.2025 23:09:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_subj]
@id_subject int
as
begin
  delete from Subject where 1=1 and Subject.id_subject=@id_subject
end
GO

