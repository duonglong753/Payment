SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sproc_MerchantSelectedByCriteriaPaging]
@PageInsex INT =0,
@PageSize INT = 0,
@Criteria NVARCHAR(500)='',
@TotalPage INT OUTPUT,
@TotalCount INT OUTPUT
AS 
BEGIN
  SET NOCOUNT ON --SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements
  DECLARE @Offset INT = (@PageInsex - 1)*@PageSize 

  SELECT * FROM Merchant m (NOLOCK) WHERE trim(@Criteria) = '' OR @Criteria IS NULL OR m.MerchantName LIKE '%' + @Criteria + '%'   
  ORDER BY m.Id
  OFFSET @Offset ROWS 
  FETCH NEXT @PageSize ROWS ONLY

  SELECT @TotalCount = count(m.Id) FROM Merchant m (NOLOCK) WHERE trim(@Criteria) = '' OR @Criteria IS NULL OR m.MerchantName LIKE '%' + @Criteria + '%'
  SET @TotalPage = CEILING(@TotalCount / CONVERT(float, @PageSize))
END  
GO