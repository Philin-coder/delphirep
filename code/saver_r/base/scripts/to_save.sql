USE [saver_r]
GO

/****** Object:  Table [dbo].[to_save]    Script Date: 22.06.2025 10:05:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[to_save](
	[to_save_id] [int] IDENTITY(1,1) NOT NULL,
	[to_save_desc] [nvarchar](255) NOT NULL,
	[to_save_theme] [nvarchar](255) NOT NULL,
	[to_save_create_date] [date] NOT NULL,
	[to_save_file] [varbinary](max) NOT NULL,
	[work_kind] [int] NULL,
	[lang_id] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[to_save]  WITH CHECK ADD  CONSTRAINT [FK_to_save_lang] FOREIGN KEY([lang_id])
REFERENCES [dbo].[lang] ([lang_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[to_save] CHECK CONSTRAINT [FK_to_save_lang]
GO

