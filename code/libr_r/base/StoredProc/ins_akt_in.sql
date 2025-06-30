USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_akt_in]    Script Date: 30.06.2025 12:47:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create   proc [dbo].[ins_akt_in]
   @akt_in_data date,
   @akt_soure nvarchar(255),
   @s_doc_id nvarchar(255),
   @s_doc_date date, 
   @s_doc_kind nvarchar(255)
   as
   begin
     insert into akt_in(akt_in_data,akt_soure,s_doc_id,s_doc_date, s_doc_kind)values
	 (@akt_in_data,@akt_soure,@s_doc_id,@s_doc_date, @s_doc_kind)
   end
GO

