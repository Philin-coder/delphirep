USE [posech_r]
GO

/****** Object:  Table [dbo].[Subject]    Script Date: 12.06.2025 23:38:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Subject](
	[id_subject] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[credits] [int] NOT NULL,
 CONSTRAINT [PK__Subject__8F848F60B81234E6] PRIMARY KEY CLUSTERED 
(
	[id_subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [CHK_Subject_Credits] CHECK  (([credits]>(0)))
GO

ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [CHK_Subject_Credits]
GO

