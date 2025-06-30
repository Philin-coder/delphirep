USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_akt_in]    Script Date: 30.06.2025 14:36:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_akt_in]
   @akt_in_id int,
   @s_doc_id nvarchar(255)
   as
   begin
     update  akt_in set @s_doc_id=@s_doc_id where 1=1 and akt_in.akt_in_id=@akt_in_id
   end
GO

