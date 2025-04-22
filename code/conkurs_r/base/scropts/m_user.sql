USE [concurs_r]
GO

/****** Object:  Table [dbo].[m_user]    Script Date: 22.04.2025 11:29:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[m_user](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[user_phone] [varchar](1000) NOT NULL,
	[user_pas] [varchar](1000) NOT NULL,
	[id_work] [int] NOT NULL,
 CONSTRAINT [PK_m_user] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[m_user]  WITH CHECK ADD  CONSTRAINT [FK_m_user_mwork] FOREIGN KEY([id_work])
REFERENCES [dbo].[mwork] ([id_work])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[m_user] CHECK CONSTRAINT [FK_m_user_mwork]
GO

