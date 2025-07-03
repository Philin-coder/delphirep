USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_doc]    Script Date: 02.07.2025 22:21:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_doc]
   @akt_in_id int,
   @doc_theme nvarchar(255),
   @doc_save_t int,
   @doc_isbn nvarchar(255),
   @doc_bbk nvarchar(255),
   @doc_cost decimal(10,2),
   @doc_kind_save int,
   @doc_kind_id int,
   @doc_ammount int,
   @doc_lang nvarchar(255)
   as
   begin
    insert into doc(akt_in_id,doc_theme ,doc_save_t,doc_isbn,doc_bbk ,doc_cost,doc_kind_save,doc_kind_id,doc_ammount ,doc_lang)
	values( @akt_in_id,@doc_theme,@doc_save_t,@doc_isbn,@doc_bbk,@doc_cost,@doc_kind_save,@doc_kind_id,@doc_ammount,@doc_lang)
   end
   
GO

