USE [kadr_r_imp]
GO

/****** Object:  Table [dbo].[prof]    Script Date: 04.03.2025 10:10:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[prof](
	[id_prof] [int] IDENTITY(1,1) NOT NULL,
	[prof_name] [nvarchar](255) NOT NULL,
	[prof_group] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_prof] PRIMARY KEY CLUSTERED 
(
	[id_prof] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

