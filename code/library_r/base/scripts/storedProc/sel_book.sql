USE [library_r]
GO

/****** Object:  StoredProcedure [dbo].[sel_book]    Script Date: 04.04.2025 12:13:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[sel_book]
@Name_B varchar(50)
as
begin
select 
Book.ID_Book,
Book.Name_B,
Book.m_Source,
Book.Date_P,
Book.m_Count,
Book.Price,
Genre.Name_G,
Author.Name_A,
Book.Publisher,
Book.Number_of_Pages,
Book.Year_of_Pub
from 
Book 
inner join Genre on Genre.ID_Genre=Book.ID_Genre
inner join Author on Author.ID_Author=Book.ID_Author
where 1=1
and Book.Name_B=@Name_B
end
GO

