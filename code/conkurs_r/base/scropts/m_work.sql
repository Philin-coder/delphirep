USE [concurs_r]
GO

/****** Object:  Table [dbo].[m_work]    Script Date: 24.04.2025 12:47:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[m_work](
	[id_work] [int] IDENTITY(1,1) NOT NULL,
	[work_naim] [varchar](1000) NOT NULL,
	[work_opis] [varchar](1000) NOT NULL,
	[work_data] [varchar](1000) NOT NULL,
	[work_mark_and_about] [varchar](1000) NOT NULL,
	[id_user] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[m_work]  WITH CHECK ADD  CONSTRAINT [FK_m_work_m_user] FOREIGN KEY([id_user])
REFERENCES [dbo].[m_user] ([id_user])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[m_work] CHECK CONSTRAINT [FK_m_work_m_user]
GO

