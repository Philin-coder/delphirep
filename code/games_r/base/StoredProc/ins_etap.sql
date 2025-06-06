USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[ins_etap]    Script Date: 01.12.2020 21:47:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ins_etap]
@Nam_etap varchar(150)
as
begin
insert into Etap(Nam_etap) values(@Nam_etap)
end
GO

