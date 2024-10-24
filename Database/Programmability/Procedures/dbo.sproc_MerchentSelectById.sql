SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sproc_MerchentSelectById]
@Id NVARCHAR(50)=''
AS 
BEGIN
  SET NOCOUNT ON --SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements
  SELECT * FROM Merchant m (NOLOCK) WHERE m.Id = @Id   
END 
GO