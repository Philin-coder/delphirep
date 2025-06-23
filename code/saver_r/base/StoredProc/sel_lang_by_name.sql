USE [saver_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_lang_by_name]    Script Date: 23.06.2025 17:15:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc  [dbo].[sel_lang_by_name]
@lang_naim nvarchar(255)
as
begin
  select 
  lang.lang_id,
  lang.lang_desc,
  lang.lang_naim,
 case when lang.lang_kind=0 then 'Компилируемый' else 'Интерпритипуемый' end
from lang 
where 1=1
and lang.lang_naim=@lang_naim
end
GO

