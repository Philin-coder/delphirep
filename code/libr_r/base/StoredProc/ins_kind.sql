USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_kind]    Script Date: 28.06.2025 16:37:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_kind]
@doc_kind_naim nvarchar(255)
as
begin
  insert into doc_kind(doc_kind_naim)values(@doc_kind_naim)
end
GO

