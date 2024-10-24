SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sproc_MerchantSelectedByCriteria]
@Criteria NVARCHAR(500)=''
AS 
BEGIN
  SET NOCOUNT ON --SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements
  SELECT * FROM Merchant m (NOLOCK) WHERE trim(@Criteria) = '' OR @Criteria IS NULL OR m.MerchantName LIKE '%' + @Criteria + '%'   
END  
GO