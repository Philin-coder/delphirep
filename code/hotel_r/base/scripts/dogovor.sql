USE [hotel_r]
GO

/****** Object:  Table [dbo].[dogovor]    Script Date: 03.05.2025 12:27:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dogovor](
	[dog_id] [int] IDENTITY(1,1) NOT NULL,
	[guest_fio] [varchar](1000) NOT NULL,
	[data_b] [date] NOT NULL,
	[pass_n] [varchar](1000) NOT NULL,
	[pass_seria] [varchar](1000) NOT NULL,
	[kem_vid] [varchar](1000) NOT NULL,
	[mesto_r] [varchar](1000) NOT NULL,
	[data_reg] [date] NOT NULL,
	[pol] [varchar](1000) NOT NULL,
	[perpose] [varchar](1000) NOT NULL,
	[nomer_id] [int] NOT NULL,
	[date_dog] [date] NOT NULL,
	[sr_dog] [int] NOT NULL,
	[id_admin] [int] NOT NULL,
 CONSTRAINT [PK_dogovor] PRIMARY KEY CLUSTERED 
(
	[dog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[dogovor]  WITH CHECK ADD  CONSTRAINT [FK_dogovor_m_admin] FOREIGN KEY([id_admin])
REFERENCES [dbo].[m_admin] ([id_admin])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[dogovor] CHECK CONSTRAINT [FK_dogovor_m_admin]
GO

ALTER TABLE [dbo].[dogovor]  WITH CHECK ADD  CONSTRAINT [FK_dogovor_nomer] FOREIGN KEY([nomer_id])
REFERENCES [dbo].[nomer] ([nomer_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[dogovor] CHECK CONSTRAINT [FK_dogovor_nomer]
GO

