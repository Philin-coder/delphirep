USE [concurs_r]
GO

/****** Object:  StoredProcedure [dbo].[aut_pas]    Script Date: 26.04.2025 11:24:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc  [dbo].[aut_pas]
@fio varchar(1000),
@user_pas varchar(1000)
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
and m_user.user_pas=@user_pas
end
GO

