USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_etap]    Script Date: 07.06.2025 11:10:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[ins_etap]
@Nam_etap varchar(1000)
as
begin
insert into Etap(Nam_etap) values(@Nam_etap)
end
GO

