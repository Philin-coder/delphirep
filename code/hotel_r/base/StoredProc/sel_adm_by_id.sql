USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_adm_by_id]    Script Date: 14.05.2025 9:52:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_adm_by_id]
@id_admin int
as
begin
select m_admin.fio_admin from m_admin where 1=1 and m_admin.id_admin=@id_admin 
end
GO

