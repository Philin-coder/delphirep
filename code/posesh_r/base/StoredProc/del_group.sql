USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[del_group]    Script Date: 15.06.2025 12:01:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_group]
@id_group int
as
begin
  delete from m_Group where 1=1 and m_Group.id_group=@id_group
end

GO

