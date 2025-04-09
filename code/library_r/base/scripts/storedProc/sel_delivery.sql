USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_delivery]    Script Date: 09.04.2025 19:51:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sel_delivery]
@name_r varchar(50)
as
begin
select 
Delivery.ID_Delivery ,
Book.Name_B,
Reader.Name_R,
Delivery.Date_D,
Delivery.Date_Return_Plan,
Delivery.Date_Return_Fact
from Delivery
inner join  Doc on Delivery.ID_Doc=Doc.ID_Doc
inner join Book on Book.ID_Book=Doc.ID_Book
inner join Reader on Reader.ID_Reader=Delivery.ID_Reader
where 1=1 
and Delivery.Date_Return_Fact is null
and Reader.Name_R=@name_r
end
GO

