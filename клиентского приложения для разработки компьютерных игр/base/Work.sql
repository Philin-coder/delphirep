USE [Razrab_Andryuschenko]
GO

/****** Object:  Table [dbo].[Work]    Script Date: 01.12.2020 21:43:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Work](
	[N_Work] [int] IDENTITY(1,1) NOT NULL,
	[Nam_work] [varchar](100) NOT NULL,
	[T_days] [date] NOT NULL,
	[N_Etap] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[N_Work] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Work]  WITH CHECK ADD FOREIGN KEY([N_Etap])
REFERENCES [dbo].[Etap] ([N_Etap])
GO

