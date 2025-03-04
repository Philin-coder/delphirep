USE [kadr_r_imp]
GO

/****** Object:  Table [dbo].[vakanlist]    Script Date: 04.03.2025 10:11:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[vakanlist](
	[nomvlist] [int] IDENTITY(1,1) NOT NULL,
	[ank_nom] [int] NOT NULL,
	[datein] [date] NOT NULL,
	[res] [int] NOT NULL,
	[dateres] [date] NOT NULL,
	[id_vakans] [int] NOT NULL,
 CONSTRAINT [PK_vakanlist] PRIMARY KEY CLUSTERED 
(
	[nomvlist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[vakanlist]  WITH CHECK ADD  CONSTRAINT [FK_vakanlist_vakansia] FOREIGN KEY([id_vakans])
REFERENCES [dbo].[vakansia] ([id_vakans])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[vakanlist] CHECK CONSTRAINT [FK_vakanlist_vakansia]
GO

