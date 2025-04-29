USE [concurs_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_pass_by_id]    Script Date: 29.04.2025 19:05:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc  [dbo].[upd_pass_by_id]
@pass varchar(1000) ,
@id int 
as
begin
update m_user set user_pas=@pass where m_user.id_user=@id
end 
GO

