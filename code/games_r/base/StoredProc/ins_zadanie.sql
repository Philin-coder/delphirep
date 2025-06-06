USE [Razrab_Andryuschenko]
GO

/****** Object:  StoredProcedure [dbo].[ins_zadanie]    Script Date: 01.12.2020 21:49:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_zadanie]
@Sr_vip date,
@N_Rab int,
@St_rab char(50),
@Data_nash date,
@N_Proekta int,
@N_Work int 
as
 begin
 insert into Zadanie(Sr_vip,N_Rab,St_rab,Data_nash,N_Proekta,N_Work) values(@Sr_vip,@N_Rab,@St_rab,@Data_nash,@N_Proekta,@N_Work)
 end
GO

