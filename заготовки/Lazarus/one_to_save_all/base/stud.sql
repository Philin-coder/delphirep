USE [tst33]
GO

/****** Object:  Table [dbo].[stud]    Script Date: 21.02.2024 11:54:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stud](
	[peroson_id] [int] IDENTITY(1,1) NOT NULL,
	[person_name] [varchar](50) NOT NULL,
	[person_data] [varchar](50) NOT NULL,
	[gr_id] [int] NOT NULL,
 CONSTRAINT [PK_stud] PRIMARY KEY CLUSTERED 
(
	[peroson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[stud]  WITH CHECK ADD  CONSTRAINT [FK_stud_gruppa] FOREIGN KEY([gr_id])
REFERENCES [dbo].[gruppa] ([gr_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[stud] CHECK CONSTRAINT [FK_stud_gruppa]
GO

