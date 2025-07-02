USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[del_act_out]    Script Date: 02.07.2025 14:21:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_act_out]
   @exit_akt_id  int
   as
   begin
     delete from akt_out where 1=1 and akt_out.exit_akt_id=@exit_akt_id
   end
GO

