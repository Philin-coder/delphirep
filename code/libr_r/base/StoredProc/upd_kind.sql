USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_kind]    Script Date: 28.06.2025 17:48:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_kind]
 @doc_kind_id int,
 @doc_kind_naim nvarchar(255)
 as
 begin
   update doc_kind set doc_kind_naim=@doc_kind_naim where 1=1 and doc_kind.doc_kind_id=@doc_kind_id
 end
GO

