USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_man]    Script Date: 27.05.2025 22:40:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_man]
@maneger_id int,
@m_email varchar(1000)
as
begin
update manager set email=@m_email where 1=1 and manager.maneger_id=@maneger_id
end
GO

