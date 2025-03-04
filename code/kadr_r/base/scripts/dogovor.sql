USE [kadr_r_imp]
GO

/****** Object:  Table [dbo].[dogovor]    Script Date: 04.03.2025 10:10:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dogovor](
	[id_dog] [int] IDENTITY(1,1) NOT NULL,
	[pay_cond] [nvarchar](255) NOT NULL,
	[cont_face] [nvarchar](255) NOT NULL,
	[company] [nvarchar](255) NOT NULL,
	[c_adress] [nvarchar](255) NOT NULL,
	[c_contdata] [nvarchar](255) NOT NULL,
	[dogterm] [date] NOT NULL,
 CONSTRAINT [PK_dogovor] PRIMARY KEY CLUSTERED 
(
	[id_dog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

