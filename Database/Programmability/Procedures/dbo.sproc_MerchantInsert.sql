SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sproc_MerchantInsert]
@Id NVARCHAR(50)='',
@MerchantName NVARCHAR(250)='',
@MerchantWebLink NVARCHAR(250) = '',
@MerchantIpnUrl NVARCHAR(250) = '',
@MerchantReturnUrl NVARCHAR(250) = '',
@SecretKey NVARCHAR(50)='',
@IsActive BIT = 0,
@InsertUser NVARCHAR(50),
@InsertedId NVARCHAR(50) OUTPUT
AS
BEGIN
	IF(@Id IS NULL OR TRIM(@Id) = '')
	BEGIN
		SET @Id = 'MER' + SUBSTRING(master.dbo.fn_varbintohexstr(HASHBYTES('MD5', @MerchantName)),3,32)
	END

	IF(@SecretKey IS NULL OR TRIM(@SecretKey) = '')
	BEGIN
		SET @SecretKey = NEWID()
	END

	SET @InsertedId = @Id

	INSERT INTO [dbo].[Merchant]
			   ([Id]
			   ,[MerchantName]
			   ,[MerchantWebLink]
			   ,[MerchantIpnUrl]
			   ,[MerchantReturnUrl]
			   ,[SecretKey]
			   ,[IsActive]
			   ,[CreatedBy]
			   ,[CreatedAt])
		 VALUES
			   (@Id
			   ,@MerchantName
			   ,@MerchantWebLink
			   ,@MerchantIpnUrl
			   ,@MerchantReturnUrl
			   ,@SecretKey
			   ,@IsActive
			   ,@InsertUser
			   ,GETDATE())


END

GO