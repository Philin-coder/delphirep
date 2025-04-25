USE [concurs_r]
GO

/****** Object:  StoredProcedure [dbo].[del_work]    Script Date: 25.04.2025 17:42:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_work]
@id_work int
as
begin
delete from m_work where 1=1 and m_work.id_work=@id_work
end
GO

