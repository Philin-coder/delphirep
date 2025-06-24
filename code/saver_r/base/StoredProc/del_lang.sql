USE [saver_r]
GO

/****** Object:  StoredProcedure [dbo].[del_lang]    Script Date: 24.06.2025 13:11:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_lang]
  @lang_id int
  as
  begin
    delete from lang where 1=1 and lang.lang_id=@lang_id
  end
GO

