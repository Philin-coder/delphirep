USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_usluga]    Script Date: 28.05.2025 11:17:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[ins_usluga]
@opis varchar(150),
@cost decimal(10,2)
as
begin
insert into usluga(opis,cost) values(@opis,@cost)
end
GO

