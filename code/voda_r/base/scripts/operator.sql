USE [vod_r]
GO

/****** Object:  Table [dbo].[operator]    Script Date: 22.05.2025 17:16:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[operator](
	[oper_id] [int] IDENTITY(1,1) NOT NULL,
	[oper_naim] [nvarchar](255) NOT NULL,
	[userid] [int] NOT NULL,
	[smdata] [datetime] NOT NULL,
	[klient_id] [int] NOT NULL,
 CONSTRAINT [PK_operator] PRIMARY KEY CLUSTERED 
(
	[oper_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[operator]  WITH CHECK ADD  CONSTRAINT [FK_operator_klient] FOREIGN KEY([klient_id])
REFERENCES [dbo].[klient] ([klient_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[operator] CHECK CONSTRAINT [FK_operator_klient]
GO

ALTER TABLE [dbo].[operator]  WITH CHECK ADD  CONSTRAINT [FK_operator_usver] FOREIGN KEY([userid])
REFERENCES [dbo].[usver] ([userid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[operator] CHECK CONSTRAINT [FK_operator_usver]
GO

