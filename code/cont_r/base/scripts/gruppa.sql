USE [cont_r]
GO

/****** Object:  Table [dbo].[gruppa]    Script Date: 09.03.2025 11:16:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gruppa](
	[grup_id] [int] IDENTITY(1,1) NOT NULL,
	[naim_grup] [varchar](1000) NOT NULL,
	[kurs] [int] NOT NULL,
	[spec_id] [int] NOT NULL,
 CONSTRAINT [PK_gruppa] PRIMARY KEY CLUSTERED 
(
	[grup_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[gruppa]  WITH CHECK ADD  CONSTRAINT [FK_gruppa_spec] FOREIGN KEY([spec_id])
REFERENCES [dbo].[spec] ([spec_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[gruppa] CHECK CONSTRAINT [FK_gruppa_spec]
GO

