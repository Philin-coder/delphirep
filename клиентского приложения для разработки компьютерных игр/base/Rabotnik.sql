USE [Razrab_Andryuschenko]
GO

/****** Object:  Table [dbo].[Rabotnik]    Script Date: 01.12.2020 21:42:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Rabotnik](
	[N_Rab] [int] IDENTITY(1,1) NOT NULL,
	[Fio] [varchar](100) NOT NULL,
	[N_Dol] [int] NOT NULL,
	[Iphone] [int] NULL,
	[St_rab] [char](50) NOT NULL,
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

