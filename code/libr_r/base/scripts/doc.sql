USE [libr_r]
GO

/****** Object:  Table [dbo].[doc]    Script Date: 04.07.2025 17:11:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[doc](
	[doc_id] [int] IDENTITY(1,1) NOT NULL,
	[akt_in_id] [int] NOT NULL,
	[doc_theme] [nvarchar](255) NOT NULL,
	[doc_save_t] [int] NOT NULL,
	[doc_isbn] [nvarchar](255) NOT NULL,
	[doc_bbk] [nvarchar](255) NOT NULL,
	[doc_cost] [float] NOT NULL,
	[doc_kind_save] [int] NOT NULL,
	[doc_kind_id] [int] NOT NULL,
	[doc_ammount] [int] NOT NULL,
	[doc_lang] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_doc] PRIMARY KEY CLUSTERED 
(
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[doc]  WITH CHECK ADD  CONSTRAINT [FK_doc_akt_in] FOREIGN KEY([akt_in_id])
REFERENCES [dbo].[akt_in] ([akt_in_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[doc] CHECK CONSTRAINT [FK_doc_akt_in]
GO

ALTER TABLE [dbo].[doc]  WITH CHECK ADD  CONSTRAINT [FK_doc_doc_kind] FOREIGN KEY([doc_kind_id])
REFERENCES [dbo].[doc_kind] ([doc_kind_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[doc] CHECK CONSTRAINT [FK_doc_doc_kind]
GO

