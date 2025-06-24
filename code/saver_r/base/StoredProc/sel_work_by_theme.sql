USE [saver_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_work_by_theme]    Script Date: 24.06.2025 18:55:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_work_by_theme]
@to_save_theme nvarchar(255)
as
begin
  select 
  to_save.to_save_id,
  to_save.to_save_desc,
  to_save.to_save_theme,
  to_save.to_save_create_date,
  to_save.to_save_file,
  case when to_save.work_kind=0 then 'Курсовая' else 'Дипломная' end  as work_type,
  lang.lang_naim
  from to_save 
  inner join lang on lang.lang_id=to_save.lang_id
  where 1=1
  and to_save.to_save_theme=@to_save_theme
end
GO

