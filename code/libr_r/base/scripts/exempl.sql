USE [libr_r]
GO

/****** Object:  Table [dbo].[exempl]    Script Date: 04.07.2025 17:11:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[exempl](
	[ex_inv_id] [int] IDENTITY(1,1) NOT NULL,
	[ex_data_pr] [date] NOT NULL,
	[ex_data_out] [date] NOT NULL,
	[doc_id] [int] NOT NULL,
	[c_exit_id] [int] NOT NULL,
	[exit_akt_id] [int] NOT NULL,
	[ex_test_data] [date] NOT NULL,
	[ex_test_mark] [int] NOT NULL,
 CONSTRAINT [PK_exempl] PRIMARY KEY CLUSTERED 
(
	[ex_inv_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[exempl]  WITH CHECK ADD  CONSTRAINT [FK_exempl_akt_out] FOREIGN KEY([exit_akt_id])
REFERENCES [dbo].[akt_out] ([exit_akt_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[exempl] CHECK CONSTRAINT [FK_exempl_akt_out]
GO

ALTER TABLE [dbo].[exempl]  WITH CHECK ADD  CONSTRAINT [FK_exempl_c_exit] FOREIGN KEY([c_exit_id])
REFERENCES [dbo].[c_exit] ([c_exit_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[exempl] CHECK CONSTRAINT [FK_exempl_c_exit]
GO

ALTER TABLE [dbo].[exempl]  WITH CHECK ADD  CONSTRAINT [FK_exempl_doc1] FOREIGN KEY([doc_id])
REFERENCES [dbo].[doc] ([doc_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[exempl] CHECK CONSTRAINT [FK_exempl_doc1]
GO

