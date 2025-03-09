USE [cont_r]
GO

/****** Object:  Table [dbo].[prikaz]    Script Date: 09.03.2025 11:17:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[prikaz](
	[pr_id] [int] NOT NULL,
	[pr_nom] [varchar](50) NOT NULL,
	[date_pr] [date] NOT NULL,
	[tip_pr] [varchar](1000) NOT NULL,
	[stud_id] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[prikaz]  WITH CHECK ADD  CONSTRAINT [FK_prikaz_stud] FOREIGN KEY([stud_id])
REFERENCES [dbo].[stud] ([stud_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[prikaz] CHECK CONSTRAINT [FK_prikaz_stud]
GO

