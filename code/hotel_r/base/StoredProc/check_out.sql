USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[check_out]    Script Date: 13.05.2025 16:32:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[check_out]
@nomer_id int
as
begin
update nomer set  nomer.nomer_st=1 where 1=1 and nomer.nomer_id=@nomer_id
end



GO

