USE [kadr_r_imp]
GO

/****** Object:  Table [dbo].[vakansia]    Script Date: 04.03.2025 10:12:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[vakansia](
	[id_vakans] [int] IDENTITY(1,1) NOT NULL,
	[position] [varchar](255) NOT NULL,
	[pay] [varchar](255) NOT NULL,
	[id_dog] [int] NOT NULL,
	[id_prof] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[vak_st] [int] NOT NULL,
 CONSTRAINT [PK_vakansia] PRIMARY KEY CLUSTERED 
(
	[id_vakans] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[vakansia]  WITH CHECK ADD  CONSTRAINT [FK_vakansia_dogovor] FOREIGN KEY([id_dog])
REFERENCES [dbo].[dogovor] ([id_dog])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[vakansia] CHECK CONSTRAINT [FK_vakansia_dogovor]
GO

ALTER TABLE [dbo].[vakansia]  WITH CHECK ADD  CONSTRAINT [FK_vakansia_prof] FOREIGN KEY([id_prof])
REFERENCES [dbo].[prof] ([id_prof])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[vakansia] CHECK CONSTRAINT [FK_vakansia_prof]
GO

