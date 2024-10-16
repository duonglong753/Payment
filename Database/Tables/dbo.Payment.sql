CREATE TABLE [dbo].[Payment] (
  [Id] [nvarchar](50) NOT NULL,
  [PaymentContent] [nvarchar](250) NULL,
  [PaymentCurrenccy] [nvarchar](10) NULL,
  [PaymentRefId] [nvarchar](50) NULL,
  [PaymentAmount] [decimal](19, 2) NULL,
  [PaymentDate] [datetime] NULL,
  [ExpireDate] [datetime] NULL,
  [PaymentLanguage] [nvarchar](10) NULL,
  [MerchantId] [nvarchar](50) NULL,
  [PaymentDestinationId] [nvarchar](50) NULL,
  [PaidAmount] [decimal](19, 2) NULL,
  [PaymentStatus] [nvarchar](20) NULL,
  [PaymentLastMsg] [nvarchar](250) NULL,
  CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Payment]
  ADD CONSTRAINT [FK_Payment_Merchant_MerchantId] FOREIGN KEY ([MerchantId]) REFERENCES [dbo].[Merchant] ([Id])
GO

ALTER TABLE [dbo].[Payment]
  ADD CONSTRAINT [FK_Payment_PaymentDestination_PaymentDestId] FOREIGN KEY ([PaymentDestinationId]) REFERENCES [dbo].[PaymentDestination] ([Id])
GO