USE [posech_r]
GO

/****** Object:  StoredProcedure [dbo].[del_curr]    Script Date: 16.06.2025 13:04:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_curr]
@id_curriculum int
as
begin
  delete from Curriculum where 1=1 and Curriculum.id_curriculum=@id_curriculum
end
GO

