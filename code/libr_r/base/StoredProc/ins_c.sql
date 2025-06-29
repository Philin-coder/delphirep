USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_c]    Script Date: 29.06.2025 11:38:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_c]
 @c_exit_desc nvarchar(255)
 as
 begin
   insert into c_exit(c_exit_desc)values(@c_exit_desc)
 end

GO

