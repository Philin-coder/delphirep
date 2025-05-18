USE [uspev_r]
GO

/****** Object:  StoredProcedure [dbo].[del_sub]    Script Date: 18.05.2025 14:58:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_sub]
@id_subject int
as
begin
delete from Subject where 1=1 and Subject.id_subject=@id_subject
end
GO

