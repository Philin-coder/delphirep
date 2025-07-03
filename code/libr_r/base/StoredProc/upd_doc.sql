USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_doc]    Script Date: 03.07.2025 16:46:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_doc]
  @doc_id int,
  @doc_bbk nvarchar(255)
  as
  begin
    update doc set doc.doc_bbk=@doc_bbk where 1=1 and doc.doc_id=@doc_id
  end


GO

