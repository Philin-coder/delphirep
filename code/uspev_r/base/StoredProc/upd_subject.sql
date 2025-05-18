USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_subject]    Script Date: 18.05.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_subject]
@id_subject int,
@credits int
as
begin
update Subject set credits=@credits where 1=1 and Subject.id_subject=@id_subject
end
GO

