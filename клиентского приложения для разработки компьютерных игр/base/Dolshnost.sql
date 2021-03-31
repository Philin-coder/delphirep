USE [Razrab_Andryuschenko]
GO

/****** Object:  Table [dbo].[Dolshnost]    Script Date: 01.12.2020 21:40:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dolshnost](
	[N_Dol] [int] IDENTITY(1,1) NOT NULL,
	[Nam_dol] [varchar](100) NOT NULL,
	[Id_manager] [int] NOT NULL,
 CONSTRAINT [PK__Dolshnos__CC4C67DB00314AF6] PRIMARY KEY CLUSTERED 
(
	[N_Dol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dolshnost]  WITH CHECK ADD  CONSTRAINT [FK_Dolshnost_manager] FOREIGN KEY([Id_manager])
REFERENCES [dbo].[manager] ([Id_manager])
GO

ALTER TABLE [dbo].[Dolshnost] CHECK CONSTRAINT [FK_Dolshnost_manager]
GO

