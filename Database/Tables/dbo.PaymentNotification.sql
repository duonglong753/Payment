CREATE TABLE [dbo].[PaymentNotification] (
  [Id] [nvarchar](50) NOT NULL,
  [PaymentRefId] [nvarchar](50) NULL,
  [NotiDate] [nvarchar](50) NULL,
  [NotiAmount] [nvarchar](50) NULL,
  [NotiContent] [nvarchar](50) NULL,
  [NotiMsg] [nvarchar](50) NULL,
  [NotiSign] [nvarchar](50) NULL,
  [PaymentId] [nvarchar](50) NULL,
  [MerchantId] [nvarchar](50) NULL,
  [NotiStatus] [nvarchar](50) NULL,
  [NotiRefDate] [nvarchar](50) NULL,
  CONSTRAINT [PK_PaymentNotification] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PaymentNotification]
  ADD CONSTRAINT [FK_PaymentNotification_Payment_PaymentId] FOREIGN KEY ([PaymentId]) REFERENCES [dbo].[Payment] ([Id])
GO