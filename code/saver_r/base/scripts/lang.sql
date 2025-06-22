USE [saver_r]
GO

/****** Object:  Table [dbo].[lang]    Script Date: 22.06.2025 10:05:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lang](
	[lang_id] [int] IDENTITY(1,1) NOT NULL,
	[lang_desc] [nvarchar](255) NOT NULL,
	[lang_naim] [nvarchar](255) NULL,
	[lang_kind] [int] NOT NULL,
 CONSTRAINT [PK_lang] PRIMARY KEY CLUSTERED 
(
	[lang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

