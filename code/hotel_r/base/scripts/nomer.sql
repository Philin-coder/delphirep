USE [hotel_r]
GO

/****** Object:  Table [dbo].[nomer]    Script Date: 03.05.2025 12:27:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nomer](
	[nomer_id] [int] IDENTITY(1,1) NOT NULL,
	[nomer_kind] [varchar](1000) NOT NULL,
	[nomer_cost_day] [decimal](10, 2) NOT NULL,
	[id_type_nomer] [int] NOT NULL,
 CONSTRAINT [PK_nomer] PRIMARY KEY CLUSTERED 
(
	[nomer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[nomer]  WITH CHECK ADD  CONSTRAINT [FK_nomer_type_nomer] FOREIGN KEY([id_type_nomer])
REFERENCES [dbo].[type_nomer] ([id_type_nomer])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[nomer] CHECK CONSTRAINT [FK_nomer_type_nomer]
GO

