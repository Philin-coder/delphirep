USE [concurs_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_user_by_fio]    Script Date: 24.04.2025 14:38:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_user_by_fio]
@fio varchar(1000)
as 
begin
select 
m_user.id_user,
m_user.fio,
m_user.user_phone,
m_user.user_pas 
from m_user 
where 1=1
and m_user.fio=@fio
end
GO

