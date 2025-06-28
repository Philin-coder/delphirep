USE [libr_r]
GO

/****** Object:  Table [dbo].[doc_kind]    Script Date: 28.06.2025 16:01:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[doc_kind](
	[doc_kind_id] [int] IDENTITY(1,1) NOT NULL,
	[doc_kind_naim] [nchar](255) NOT NULL,
 CONSTRAINT [PK_doc_kind] PRIMARY KEY CLUSTERED 
(
	[doc_kind_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

