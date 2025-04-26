USE [concurs_r]
GO

/****** Object:  StoredProcedure [dbo].[SelbyID]    Script Date: 26.04.2025 22:59:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc  [dbo].[SelbyID] 
@id int 
as
begin
select
m_user.id_user,
m_user.fio,
m_user.user_phone,
m_user.user_pas 
from m_user 
where 1=1
and m_user.id_user=@id
end
GO

