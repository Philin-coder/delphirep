USE [saver_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_lang]    Script Date: 24.06.2025 11:35:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_lang]
  @lang_desc nvarchar(255),
  @lang_naim nvarchar(255),
  @lang_kind int
  as
  begin
    insert into lang(lang_desc,lang_naim,lang_kind)values(@lang_desc,@lang_naim,@lang_kind)
  end
GO

