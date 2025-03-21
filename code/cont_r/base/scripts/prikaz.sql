USE [cont_r]
GO

/****** Object:  Table [dbo].[prikaz]    Script Date: 21.03.2025 16:34:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[prikaz](
	[pr_id] [int] IDENTITY(1,1) NOT NULL,
	[pr_nom] [varchar](1000) NOT NULL,
	[date_pr] [date] NOT NULL,
	[tip_pr] [varchar](1000) NOT NULL,
	[stud_id] [int] NOT NULL,
 CONSTRAINT [PK_prikaz] PRIMARY KEY CLUSTERED 
(
	[pr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[prikaz]  WITH CHECK ADD  CONSTRAINT [FK_prikaz_stud] FOREIGN KEY([stud_id])
REFERENCES [dbo].[stud] ([stud_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[prikaz] CHECK CONSTRAINT [FK_prikaz_stud]
GO

