USE [saver_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_lang]    Script Date: 24.06.2025 13:06:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[upd_lang] 
  @lang_id int,
  @lang_desc nvarchar(255)
  as
  begin
   update lang set lang_desc=@lang_desc where 1=1 and lang.lang_id=@lang_id
  end
  
GO

