USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[del_doc]    Script Date: 03.07.2025 17:07:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_doc]
  @doc_id int
  as
  begin
    delete from doc where 1=1 and doc.doc_id=@doc_id
  end
GO

