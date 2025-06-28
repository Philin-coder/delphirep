USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_c_exit_by_desc]    Script Date: 28.06.2025 23:29:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_c_exit_by_desc]
 @c_exit_desc nvarchar(255)
 as
 begin
   select 
 c_exit.c_exit_id,
 c_exit.c_exit_desc 
 from c_exit 
 where 1=1
 and c_exit.c_exit_desc=@c_exit_desc
 end
GO

