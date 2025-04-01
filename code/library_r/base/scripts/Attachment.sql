USE [library_r]
GO

/****** Object:  Table [dbo].[attachment]    Script Date: 01.04.2025 18:16:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[attachment](
	[id_attachment] [int] IDENTITY(1,1) NOT NULL,
	[file_name_attachment] [varchar](1000) NOT NULL,
	[attachment] [varbinary](max) NOT NULL,
	[attachment_description] [varchar](50) NULL,
	[ID_Doc] [int] NOT NULL,
 CONSTRAINT [PK_attachment] PRIMARY KEY CLUSTERED 
(
	[id_attachment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[attachment]  WITH CHECK ADD  CONSTRAINT [FK_attachment_Doc] FOREIGN KEY([ID_Doc])
REFERENCES [dbo].[Doc] ([ID_Doc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[attachment] CHECK CONSTRAINT [FK_attachment_Doc]
GO

