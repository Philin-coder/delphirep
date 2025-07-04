USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[del_ex]    Script Date: 04.07.2025 16:59:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[del_ex]
@ex_inv_id int
as
begin
  delete from exempl where 1=1 and exempl.ex_inv_id=@ex_inv_id
end
GO

