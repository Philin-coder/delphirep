USE [vod_r]
GO

/****** Object:  Table [dbo].[schet]    Script Date: 22.05.2025 17:16:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[schet](
	[schet_id] [int] IDENTITY(1,1) NOT NULL,
	[schet_dr] [datetime] NULL,
	[vrem_p] [datetime] NOT NULL,
	[vrem_sp] [datetime] NOT NULL,
	[Nomer] [nvarchar](255) NOT NULL,
	[type_id] [int] NOT NULL,
	[klient_id] [int] NOT NULL,
 CONSTRAINT [PK_schet] PRIMARY KEY CLUSTERED 
(
	[schet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[schet]  WITH CHECK ADD  CONSTRAINT [FK_schet_klient] FOREIGN KEY([klient_id])
REFERENCES [dbo].[klient] ([klient_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[schet] CHECK CONSTRAINT [FK_schet_klient]
GO

ALTER TABLE [dbo].[schet]  WITH CHECK ADD  CONSTRAINT [FK_schet_type_s] FOREIGN KEY([type_id])
REFERENCES [dbo].[type_s] ([type_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[schet] CHECK CONSTRAINT [FK_schet_type_s]
GO

