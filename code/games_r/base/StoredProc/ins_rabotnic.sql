USE [games_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_rabotnic]    Script Date: 10.06.2025 10:33:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ins_rabotnic]
@Fio varchar(1000),
@N_Dol  int,
@Iphone varchar(1000),
@St_rab int,
@Date_pr date,
@usverid int
as
begin
insert into Rabotnik(Fio,N_Dol,Iphone ,St_rab ,Date_pr,usverid ) values(@Fio,@N_Dol,@Iphone,@St_rab,@Date_pr,@usverid )
end
GO

