SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Altering [dbo].[Widgets]'
GO
ALTER TABLE [dbo].[Widgets] ADD
[Octo_Widget] [nchar] (10) NULL
GO
PRINT N'Altering [dbo].[GetAllWidgets]'
GO

ALTER   PROCEDURE [dbo].[GetAllWidgets]
AS
BEGIN
--comment
	SELECT RecordID,
		Octo_Widget
           Description 
	FROM dbo.Widgets
END
GO
PRINT N'Refreshing [dbo].[CurrentPrices]'
GO
EXEC sp_refreshview N'[dbo].[CurrentPrices]'
GO

SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

PRINT(N'Add 1 row to [dbo].[States]')
INSERT INTO [dbo].[States] ([ID], [Abbreviation], [Name], [Twitter]) VALUES (1, N'NSW', N'New South Wales', N'NSWRuleZ  ')

