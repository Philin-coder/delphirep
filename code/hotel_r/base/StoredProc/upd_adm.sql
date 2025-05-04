USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_adm]    Script Date: 04.05.2025 16:54:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_adm]
@id_admin int,
@smena int
as
begin
update m_admin set smena=@smena where m_admin.id_admin=@id_admin
end
GO

