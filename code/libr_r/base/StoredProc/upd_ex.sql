USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[upd_ex]    Script Date: 04.07.2025 16:38:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[upd_ex]
@ex_inv_id int,
@ex_test_mark int
as
begin
  update exempl set ex_test_mark=@ex_test_mark where 1=1 and  ex_inv_id=@ex_inv_id
end
GO

