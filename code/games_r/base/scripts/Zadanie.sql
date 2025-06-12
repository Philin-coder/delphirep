USE [games_r]
GO

/****** Object:  Table [dbo].[Zadanie]    Script Date: 12.06.2025 12:42:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Zadanie](
	[N_Zad] [int] IDENTITY(1,1) NOT NULL,
	[Sr_vip] [date] NOT NULL,
	[N_Rab] [int] NOT NULL,
	[St_rab] [int] NOT NULL,
	[Data_nash] [date] NOT NULL,
	[Date_fakt] [date] NULL,
	[N_Proekta] [int] NOT NULL,
	[N_Work] [int] NOT NULL,
 CONSTRAINT [PK__Zadanie__B336C31C6830DB56] PRIMARY KEY CLUSTERED 
(
	[N_Zad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Zadanie]  WITH CHECK ADD  CONSTRAINT [FK__Zadanie__N_Proek__440B1D61] FOREIGN KEY([N_Proekta])
REFERENCES [dbo].[Proect] ([N_Proekta])
GO

ALTER TABLE [dbo].[Zadanie] CHECK CONSTRAINT [FK__Zadanie__N_Proek__440B1D61]
GO

ALTER TABLE [dbo].[Zadanie]  WITH CHECK ADD  CONSTRAINT [FK__Zadanie__N_Rab__4316F928] FOREIGN KEY([N_Rab])
REFERENCES [dbo].[Rabotnik] ([N_Rab])
GO

ALTER TABLE [dbo].[Zadanie] CHECK CONSTRAINT [FK__Zadanie__N_Rab__4316F928]
GO

ALTER TABLE [dbo].[Zadanie]  WITH CHECK ADD  CONSTRAINT [FK__Zadanie__N_Work__5535A963] FOREIGN KEY([N_Work])
REFERENCES [dbo].[Work] ([N_Work])
GO

ALTER TABLE [dbo].[Zadanie] CHECK CONSTRAINT [FK__Zadanie__N_Work__5535A963]
GO

