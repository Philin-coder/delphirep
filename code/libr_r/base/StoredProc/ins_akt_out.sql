USE [libr_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_akt_out]    Script Date: 02.07.2025 12:00:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_akt_out]
   @akt_data date,
   @akt_s_nom nvarchar(255),
   @doc_kind_id nvarchar(255),
   @on_balance int,
   @ex_cost decimal(10,2),
   @date_s_doc date
   as
   begin
     insert into akt_out(akt_data,akt_s_nom ,doc_kind_id,on_balance,ex_cost,date_s_doc)
	 values(@akt_data,@akt_s_nom,@doc_kind_id,@on_balance,@ex_cost,@date_s_doc)
   end
  
GO

