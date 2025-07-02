USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_akt_out_by_kind]    Script Date: 02.07.2025 10:25:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_akt_out_by_kind]
  @doc_kind_id nvarchar(255)
  as
  begin
   select 
   akt_out.exit_akt_id,
   akt_out.akt_data,
   akt_out.date_s_doc,
   akt_out.akt_s_nom,
   akt_out.doc_kind_id,
   case when akt_out.on_balance=0 then 'На балансе' else 'Снят с баланса' end as balance,
   akt_out.ex_cost 
   from akt_out 
   where 1=1
   and akt_out.doc_kind_id=@doc_kind_id
  end


GO

