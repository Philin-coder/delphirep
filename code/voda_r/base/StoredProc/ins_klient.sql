USE [vod_r]
GO

/****** Object:  StoredProcedure [dbo].[ins_klient]    Script Date: 26.05.2025 12:07:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ins_klient]
  @fio varchar(1000),
   @adr varchar(1000),
   @prim varchar(1000),
   @kont_d varchar(1000),
   @tel varchar(1000),
   @pokaz int,
   @oper_id int,
   @schet_id int,
   @id_master int
   as
   begin
   insert into klient(fio,adr,prim,kont_d,tel,pokaz,oper_id,schet_id,id_master)
   values(@fio,@adr,@prim,@kont_d,@tel,@pokaz,@oper_id,@schet_id,@id_master)
   end
  
GO

