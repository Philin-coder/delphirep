USE [kadr_r_imp]
GO

/****** Object:  Table [dbo].[questionarie]    Script Date: 04.03.2025 10:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[questionarie](
	[ank_nom] [int] IDENTITY(1,1) NOT NULL,
	[b_data] [date] NOT NULL,
	[fio] [nvarchar](255) NOT NULL,
	[obr] [nvarchar](255) NOT NULL,
	[kval] [nvarchar](255) NOT NULL,
	[staj] [int] NOT NULL,
	[wish_cond] [nvarchar](255) NOT NULL,
	[id_prof] [int] NOT NULL,
 CONSTRAINT [PK_questionarie] PRIMARY KEY CLUSTERED 
(
	[ank_nom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[questionarie]  WITH CHECK ADD  CONSTRAINT [FK_questionarie_prof] FOREIGN KEY([id_prof])
REFERENCES [dbo].[prof] ([id_prof])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[questionarie] CHECK CONSTRAINT [FK_questionarie_prof]
GO

