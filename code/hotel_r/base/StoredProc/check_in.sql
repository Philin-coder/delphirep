USE [hotel_r]
GO

/****** Object:  StoredProcedure [dbo].[check_in]    Script Date: 13.05.2025 17:11:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[check_in]
@nomer_id int
as
begin
update nomer set  nomer.nomer_st=0 where 1=1 and nomer.nomer_id=@nomer_id
end
GO

