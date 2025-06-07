USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_etap_by_name]    Script Date: 07.06.2025 11:08:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_etap_by_name]
@Nam_etap  varchar(100)
as
begin
select 
Etap.N_Etap,
Etap.Nam_etap
from Etap
where 1=1 and Etap.Nam_etap=@Nam_etap
end




GO

