SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sproc_PaymentInsert]
@Id NVARCHAR(50)= '',
@PaymentContent nvarchar(250)= null,
@PaymentCurrenccy nvarchar(10)= NULL,
@PaymentRefId nvarchar(50) = null,
@PaymentAmount decimal(19, 2)=null,
@PaymentDate datetime=null,
@ExpireDate DATETIME=null,
@PaymentLanguage nvarchar(10)= null, 
@MerchantId nvarchar(50)= null,
@PaymentDestinationId nvarchar(50)= null,
@Signature nvarchar(100)='',
@InsertUser nvarchar(50)='',
@InsertedId nvarchar(250) OUTPUT
AS 
BEGIN
  IF @PaymentDate IS NULL 
  BEGIN
    SET @PaymentDate = GETDATE()
  END  
  IF @ExpireDate IS NULL
  BEGIN
    SET @ExpireDate = DATEADD(MINUTE, 15, GETDATE())
  END 
  IF @Id IS NULL 
  BEGIN
    SET @Id = 'PAY'+ substring(master.dbo.fn_varbintohexstr(HashBytes('MD5', cast(NEWID() AS nvarchar(50)))), 3, 32)
  END 

INSERT INTO dbo.Payment
(
  Id
 ,PaymentContent
 ,PaymentCurrenccy
 ,PaymentRefId
 ,PaymentAmount
 ,PaymentDate
 ,ExpireDate
 ,PaymentLanguage
 ,MerchantId
 ,PaymentDestinationId
 ,CreatedBy
 ,CreatedAt
)
VALUES
(@Id, @PaymentContent, @PaymentCurrenccy, @PaymentRefId, @PaymentAmount, @PaymentDate, @ExpireDate, @PaymentLanguage, @MerchantId, @PaymentDestinationId, @InsertUser, GETDATE())

INSERT INTO dbo.PaymentSignature
(
  Id
 ,SignValue
 ,SignDate
 ,SignOwn
 ,PaymentId
 ,IsValid
)
VALUES
(NEWID(), @Signature, GETDATE(), @MerchantId, @Id,1)
END 
GO