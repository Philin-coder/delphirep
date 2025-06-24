USE [saver_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_to_sv]    Script Date: 24.06.2025 19:17:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_to_sv]
  @to_save_desc nvarchar(255),
  @to_save_theme nvarchar(255),
  @to_save_create_date date,
  @to_save_file varbinary(max),
  @work_kind int,
  @lang_id int
  as
  begin 
    insert into to_save(to_save_desc,to_save_theme,to_save_create_date ,to_save_file,work_kind,lang_id)
	values(@to_save_desc,@to_save_theme,@to_save_create_date,@to_save_file,@work_kind,@lang_id)
  end 
GO

