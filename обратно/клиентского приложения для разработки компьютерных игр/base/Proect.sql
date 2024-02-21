USE [Razrab_Andryuschenko]
GO

/****** Object:  Table [dbo].[Proect]    Script Date: 01.12.2020 21:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Proect](
	[N_Proekta] [int] IDENTITY(1,1) NOT NULL,
	[Nam_proect] [varchar](100) NOT NULL,
	[janr] [char](50) NOT NULL,
	[data_nash] [date] NOT NULL,
	[id_manager] [int] NOT NULL,
	[cost_plan] [decimal](10, 2) NOT NULL,
	[cost_fact] [decimal](10, 3) NOT NULL,
	[dataend] [date] NULL,
	[dataendplan] [date] NULL,
 CONSTRAINT [PK__Proect__87FD978397436BFA] PRIMARY KEY CLUSTERED 
(
	[N_Proekta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Proect]  WITH CHECK ADD  CONSTRAINT [FK_Proect_manager] FOREIGN KEY([id_manager])
REFERENCES [dbo].[manager] ([Id_manager])
GO

ALTER TABLE [dbo].[Proect] CHECK CONSTRAINT [FK_Proect_manager]
GO

