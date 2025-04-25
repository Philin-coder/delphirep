USE [concurs_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_work]    Script Date: 25.04.2025 17:09:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_work]
@id_work int, 
@work_mark_and_about varchar(1000)
as
begin
update m_work set work_mark_and_about =@work_mark_and_about where 1=1 and m_work.id_work=@id_work
end
GO

