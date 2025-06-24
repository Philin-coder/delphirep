USE [saver_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_sv]    Script Date: 24.06.2025 22:30:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_sv]
  @to_save_id int,
  @to_save_desc nvarchar(255)
  as
  begin
   update to_save set to_save_desc =@to_save_desc where 1=1 and to_save.to_save_id=@to_save_id
  end
GO

