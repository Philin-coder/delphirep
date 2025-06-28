USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[del_kind]    Script Date: 28.06.2025 18:50:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

 create proc [dbo].[del_kind]
 @doc_kind_id int
 as
 begin
   delete from doc_kind where 1=1 and doc_kind.doc_kind_id=@doc_kind_id
 end
 
GO

