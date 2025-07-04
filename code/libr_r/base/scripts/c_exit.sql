USE [libr_r]
GO

/****** Object:  Table [dbo].[c_exit]    Script Date: 04.07.2025 17:10:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[c_exit](
	[c_exit_id] [int] IDENTITY(1,1) NOT NULL,
	[c_exit_desc] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_c_exit] PRIMARY KEY CLUSTERED 
(
	[c_exit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

