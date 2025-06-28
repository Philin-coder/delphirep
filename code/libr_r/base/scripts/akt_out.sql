USE [libr_r]
GO

/****** Object:  Table [dbo].[akt_out]    Script Date: 28.06.2025 16:00:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[akt_out](
	[exit_akt_id] [int] IDENTITY(1,1) NOT NULL,
	[akt_data] [date] NOT NULL,
	[akt_s_nom] [nchar](255) NOT NULL,
	[doc_kind_id] [nvarchar](255) NOT NULL,
	[on_balance] [int] NOT NULL,
	[ex_cost] [float] NOT NULL,
 CONSTRAINT [PK_akt_out] PRIMARY KEY CLUSTERED 
(
	[exit_akt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

