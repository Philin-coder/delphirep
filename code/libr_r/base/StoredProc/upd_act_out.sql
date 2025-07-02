USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_act_out]    Script Date: 02.07.2025 14:20:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_act_out]
   @exit_akt_id  int,
   @on_balance int
   as
   begin
     update akt_out set on_balance=@on_balance where 1=1 and  akt_out.exit_akt_id=@exit_akt_id
   end
GO

