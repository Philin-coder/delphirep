USE [posech_r]
GO

/****** Object:  Table [dbo].[Speciality]    Script Date: 12.06.2025 23:37:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Speciality](
	[id_speciality] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[faculty] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__Speciali__CF97EB98DE5ABF38] PRIMARY KEY CLUSTERED 
(
	[id_speciality] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

