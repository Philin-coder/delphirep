USE [men_pers_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_mplan]    Script Date: 28.05.2025 18:45:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ins_mplan]
@nazv varchar(1000),
@date_n date,
@opis varchar(150),
@maneger_id int
as
begin
insert into mplan (nazv,date_n,opis,maneger_id)values(@nazv,@date_n,@opis,@maneger_id)
end
GO

