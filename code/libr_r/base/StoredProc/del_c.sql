USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[del_c]    Script Date: 29.06.2025 12:13:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_c]
   @c_exit_id int
   as
   begin
     delete from c_exit where 1=1 and c_exit.c_exit_id=@c_exit_id
   end
GO

