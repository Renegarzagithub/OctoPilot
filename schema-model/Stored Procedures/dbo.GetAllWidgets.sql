SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE   PROCEDURE [dbo].[GetAllWidgets]
AS
BEGIN
--comment
	SELECT RecordID,
		Octo_Widget
           Description 
	FROM dbo.Widgets
END
GO
