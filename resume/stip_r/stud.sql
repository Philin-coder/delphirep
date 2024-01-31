USE [stip_r]
GO

/****** Object:  Table [dbo].[stud]    Script Date: 31.01.2024 22:50:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stud](
	[ntab] [int] IDENTITY(1,1) NOT NULL,
	[fio] [varchar](50) NOT NULL,
	[stip] [money] NOT NULL,
	[uder] [money] NOT NULL,
	[nach] [money] NOT NULL,
	[date_n] [date] NOT NULL,
	[date_k] [date] NOT NULL,
	[ball] [int] NOT NULL,
	[n_gr] [int] NOT NULL,
	[date_o] [date] NULL,
 CONSTRAINT [PK_stud] PRIMARY KEY CLUSTERED 
(
	[ntab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[stud] ADD  CONSTRAINT [DF_stud_ball]  DEFAULT ((0)) FOR [ball]
GO

ALTER TABLE [dbo].[stud]  WITH CHECK ADD  CONSTRAINT [FK_stud_groupp] FOREIGN KEY([n_gr])
REFERENCES [dbo].[groupp] ([n_gr])
GO

ALTER TABLE [dbo].[stud] CHECK CONSTRAINT [FK_stud_groupp]
GO

ALTER TABLE [dbo].[stud]  WITH CHECK ADD  CONSTRAINT [CK_stud] CHECK  (([ball]>=(0) AND [ball]<=(5)))
GO

ALTER TABLE [dbo].[stud] CHECK CONSTRAINT [CK_stud]
GO

