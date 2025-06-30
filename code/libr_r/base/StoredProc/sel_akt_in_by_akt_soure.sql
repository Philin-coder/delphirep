USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_akt_in_by_akt_soure]    Script Date: 30.06.2025 10:34:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

 CREATE proc [dbo].[sel_akt_in_by_akt_soure]
   @akt_soure nvarchar(255)
   as
   begin
   select 
   akt_in.akt_in_id,
   akt_in.akt_in_data,
   akt_in.akt_soure,
   akt_in.s_doc_id,
   akt_in.s_doc_date,
   akt_in.s_doc_kind
   from  akt_in 
   where 1=1
   and  akt_in.akt_soure=@akt_soure
   end
GO

