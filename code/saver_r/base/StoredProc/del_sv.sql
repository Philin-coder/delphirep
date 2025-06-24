USE [saver_r]
GO

/****** Object:  StoredProcedure [dbo].[del_sv]    Script Date: 24.06.2025 22:44:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_sv]
  @to_save_id int
  as
  begin
    delete from to_save where 1=1 and to_save.to_save_id=@to_save_id
  end

  
GO

