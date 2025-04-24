USE [concurs_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_user]    Script Date: 24.04.2025 21:36:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_user]
@user_phone varchar(1000),
@id_user int
as
begin
update m_user set m_user.user_phone=@user_phone where m_user.id_user=@id_user 
end
GO

