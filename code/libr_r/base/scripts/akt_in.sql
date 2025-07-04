USE [libr_r]
GO

/****** Object:  Table [dbo].[akt_in]    Script Date: 04.07.2025 17:10:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[akt_in](
	[akt_in_id] [int] IDENTITY(1,1) NOT NULL,
	[akt_in_data] [date] NOT NULL,
	[akt_soure] [nvarchar](255) NOT NULL,
	[s_doc_id] [nvarchar](255) NOT NULL,
	[s_doc_date] [date] NOT NULL,
	[s_doc_kind] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_akt_in] PRIMARY KEY CLUSTERED 
(
	[akt_in_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

