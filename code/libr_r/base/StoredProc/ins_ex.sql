USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_ex]    Script Date: 04.07.2025 15:46:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_ex]
@ex_data_pr date,
@ex_data_out date,
@doc_id int,
@c_exit_id int,
@exit_akt_id int,
@ex_test_data date,
@ex_test_mark int
as
begin
  insert into exempl(ex_data_pr,ex_data_out,doc_id,c_exit_id,exit_akt_id,ex_test_data,ex_test_mark)
  values(@ex_data_pr,@ex_data_out,@doc_id,@c_exit_id,@exit_akt_id,@ex_test_data,@ex_test_mark)
end
GO

