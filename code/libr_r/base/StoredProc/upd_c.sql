USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_c]    Script Date: 29.06.2025 12:03:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_c]
 @c_exit_id int,
 @c_exit_desc nvarchar(255)
 as
 begin
   update c_exit set c_exit_desc=@c_exit_desc where 1=1 and c_exit.c_exit_id=@c_exit_id
 end
GO

