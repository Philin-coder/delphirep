USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_group]    Script Date: 15.06.2025 11:37:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_group]
@group_name nvarchar(50),
@id_group int
as
begin
  update m_Group set group_name=@group_name where 1=1 and  m_Group.id_group=@id_group
end
GO

