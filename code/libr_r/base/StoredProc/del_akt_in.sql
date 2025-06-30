USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[del_akt_in]    Script Date: 30.06.2025 15:03:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_akt_in]
   @akt_in_id int
   as
   begin
     delete from akt_in where 1=1 and akt_in.akt_in_id=@akt_in_id
   end
GO

