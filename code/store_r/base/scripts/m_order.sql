USE [store_r]
GO

/****** Object:  Table [dbo].[m_order]    Script Date: 15.04.2025 11:14:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[m_order](
	[m_order_id] [int] IDENTITY(1,1) NOT NULL,
	[adres] [varchar](1000) NOT NULL,
	[oredr_q] [int] NOT NULL,
	[pay_way] [varchar](1000) NOT NULL,
	[get_way] [varchar](100) NOT NULL,
	[is_get] [int] NOT NULL,
	[is_pay] [int] NOT NULL,
	[u_mail] [varchar](1000) NOT NULL,
	[id_good] [int] NOT NULL,
	[about_order] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_m_order] PRIMARY KEY CLUSTERED 
(
	[m_order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[m_order]  WITH CHECK ADD  CONSTRAINT [FK_m_order_good] FOREIGN KEY([id_good])
REFERENCES [dbo].[good] ([id_good])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[m_order] CHECK CONSTRAINT [FK_m_order_good]
GO

