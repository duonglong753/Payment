SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sproc_MerchantUpdateActive]
@Id NVARCHAR(50)='',
@IsActive BIT = 0,
@UpdateUser NVARCHAR(50)
AS 
BEGIN
  UPDATE M 
    SET IsActive = @IsActive,
        LastUpdateBy = @UpdateUser,
        LastUpdateAt = GETDATE()
  FROM Merchant M
  WHERE M.Id = @Id
END 
GO