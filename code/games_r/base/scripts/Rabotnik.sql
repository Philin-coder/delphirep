USE [games_r]
GO

/****** Object:  Table [dbo].[Rabotnik]    Script Date: 10.06.2025 22:06:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Rabotnik](
	[N_Rab] [int] IDENTITY(1,1) NOT NULL,
	[Fio] [varchar](1000) NOT NULL,
	[N_Dol] [int] NOT NULL,
	[Iphone] [varchar](1000) NOT NULL,
	[St_rab] [int] NOT NULL,
	[Date_pr] [date] NOT NULL,
	[usverId] [int] NOT NULL,
	[Date_yv] [date] NULL,
 CONSTRAINT [PK__Rabotnik__C917209609411B5C] PRIMARY KEY CLUSTERED 
(
	[N_Rab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Rabotnik]  WITH CHECK ADD  CONSTRAINT [FK__Rabotnik__N_Dol__403A8C7D] FOREIGN KEY([N_Dol])
REFERENCES [dbo].[Dolshnost] ([N_Dol])
GO

ALTER TABLE [dbo].[Rabotnik] CHECK CONSTRAINT [FK__Rabotnik__N_Dol__403A8C7D]
GO

ALTER TABLE [dbo].[Rabotnik]  WITH CHECK ADD  CONSTRAINT [FK_Rabotnik_usver] FOREIGN KEY([usverId])
REFERENCES [dbo].[usver] ([usverId])
GO

ALTER TABLE [dbo].[Rabotnik] CHECK CONSTRAINT [FK_Rabotnik_usver]
GO

