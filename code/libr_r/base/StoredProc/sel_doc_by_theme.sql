USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_doc_by_theme]    Script Date: 03.07.2025 18:12:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_doc_by_theme]
   @doc_theme nvarchar(255)
   as
   begin
     select 
   doc.doc_id,
   akt_in.s_doc_id,
   doc.doc_theme,
    doc.doc_save_t,
   doc.doc_isbn,
   doc.doc_bbk,
   doc.doc_cost,
   case when doc.doc_kind_save=0 then 'Постояннго хранения' else 'Временного хранения' end as kind_save,
   doc_kind.doc_kind_naim,
   doc.doc_ammount,
   doc.doc_lang
   from doc 
   inner join akt_in on akt_in.akt_in_id=doc.akt_in_id
   inner join doc_kind on doc_kind.doc_kind_id=doc.doc_kind_id
   where 1=1
   and doc_theme=@doc_theme
   end

GO

