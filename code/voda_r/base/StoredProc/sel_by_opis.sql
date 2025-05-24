USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_by_opis]    Script Date: 24.05.2025 17:30:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sel_by_opis]
 @typr_opis varchar(1000)
 as
 begin
select 
  type_s.type_id,
  type_s.typr_opis,
  type_s.mechan,
  type_s.tochn 
from type_s 
where 1=1 
and type_s.typr_opis=@typr_opis
end
GO

