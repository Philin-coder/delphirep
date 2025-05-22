USE [vod_r]
GO

/****** Object:  Table [dbo].[klient]    Script Date: 22.05.2025 17:16:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[klient](
	[klient_id] [int] IDENTITY(1,1) NOT NULL,
	[fio] [nvarchar](255) NOT NULL,
	[adr] [nvarchar](255) NOT NULL,
	[prim] [nvarchar](255) NOT NULL,
	[kont_d] [nvarchar](255) NOT NULL,
	[tel] [int] NOT NULL,
	[pokaz] [int] NOT NULL,
	[oper_id] [int] NOT NULL,
	[id_master] [int] NOT NULL,
 CONSTRAINT [PK_klient] PRIMARY KEY CLUSTERED 
(
	[klient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[klient]  WITH CHECK ADD  CONSTRAINT [FK_klient_m_master] FOREIGN KEY([id_master])
REFERENCES [dbo].[m_master] ([id_master])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[klient] CHECK CONSTRAINT [FK_klient_m_master]
GO

