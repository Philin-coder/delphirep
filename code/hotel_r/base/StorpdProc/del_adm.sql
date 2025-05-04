USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[del_adm]    Script Date: 04.05.2025 17:51:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_adm]
@id_admin int
as
begin
delete from m_admin where 1=1 and m_admin.id_admin=@id_admin
end
GO

