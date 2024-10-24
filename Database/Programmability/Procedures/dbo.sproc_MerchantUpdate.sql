SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sproc_MerchantUpdate]
@Id NVARCHAR(50)='',
@MerchantName NVARCHAR(250)='',
@MerchantWebLink NVARCHAR(250) = '',
@MerchantIpnUrl NVARCHAR(250) = '',
@MerchantReturnUrl NVARCHAR(250) = '',
@SecretKey NVARCHAR(50)='',
@IsActive BIT = 0,
@UpdateUser NVARCHAR(50)

AS 
BEGIN
  UPDATE M 
    SET MerchantName = @MerchantName,
        MerchantWebLink = @MerchantWebLink,
        MerchantIpnUrl = @MerchantIpnUrl,
        MerchantReturnUrl = @MerchantReturnUrl,
        SecretKey = @SecretKey,
        IsActive = @IsActive,
        LastUpdateBy = @UpdateUser,
        LastUpdateAt = GETDATE()
  FROM Merchant M
  WHERE M.Id = @Id
END 
GO