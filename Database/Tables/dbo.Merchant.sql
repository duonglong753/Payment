CREATE TABLE [dbo].[Merchant] (
  [Id] [nvarchar](50) NOT NULL,
  [MerchantName] [nvarchar](50) NULL,
  [MerchantWebLink] [nvarchar](250) NULL,
  [MerchantIpnUrl] [nvarchar](250) NULL,
  [MerchantReturnUrl] [nvarchar](250) NULL,
  [SecretKey] [nvarchar](50) NULL,
  [IsActive] [bit] NULL,
  CONSTRAINT [PK_Merchant] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO