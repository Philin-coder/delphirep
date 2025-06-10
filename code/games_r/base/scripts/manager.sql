USE [games_r]
GO

/****** Object:  Table [dbo].[manager]    Script Date: 10.06.2025 22:05:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[manager](
	[Id_manager] [int] IDENTITY(1,1) NOT NULL,
	[usverId] [int] NOT NULL,
	[fio] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_manager] PRIMARY KEY CLUSTERED 
(
	[Id_manager] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[manager]  WITH CHECK ADD  CONSTRAINT [FK_manager_usver] FOREIGN KEY([usverId])
REFERENCES [dbo].[usver] ([usverId])
GO

ALTER TABLE [dbo].[manager] CHECK CONSTRAINT [FK_manager_usver]
GO

