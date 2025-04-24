USE [concurs_r]
GO

/****** Object:  StoredProcedure [dbo].[del_user]    Script Date: 24.04.2025 22:17:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_user] 
@id_user int
as
begin
delete from m_user  where 1=1 and m_user.id_user=@id_user
end
GO

