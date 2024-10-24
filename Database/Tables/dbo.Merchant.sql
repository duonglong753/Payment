CREATE TABLE [dbo].[Merchant] (
  [Id] [nvarchar](50) NOT NULL,
  [MerchantName] [nvarchar](250) NULL,
  [MerchantWebLink] [nvarchar](250) NULL,
  [MerchantIpnUrl] [nvarchar](250) NULL,
  [MerchantReturnUrl] [nvarchar](250) NULL,
  [SecretKey] [nvarchar](50) NULL,
  [IsActive] [bit] NULL,
  [CreatedBy] [nvarchar](50) NULL,
  [LastUpdateBy] [nvarchar](50) NULL,
  [CreatedAt] [datetime] NULL,
  [LastUpdateAt] [datetime] NULL,
  CONSTRAINT [PK_Merchant] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO