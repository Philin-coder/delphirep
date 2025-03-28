USE [library]
GO

/****** Object:  Table [dbo].[Reader]    Script Date: 28.03.2025 9:30:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Reader](
	[ID_Reader] [int] IDENTITY(1,1) NOT NULL,
	[Name_R] [varchar](50) NOT NULL,
	[Date_B] [date] NOT NULL,
	[Adres] [varchar](50) NOT NULL,
	[Tel] [varchar](50) NOT NULL,
	[Date_R] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Reader] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

