USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[ins_rabotnic]    Script Date: 01.12.2020 21:48:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ins_rabotnic]
@Fio varchar(100),
@N_Dol  int,
@Iphone int,
@St_rab char(50),
@Date_pr date,
@usverid int
as
begin
insert into Rabotnik(Fio,N_Dol,Iphone ,St_rab ,Date_pr,usverid ) values(@Fio,@N_Dol,@Iphone,@St_rab,@Date_pr,@usverid )
end
GO

