CREATE TABLE [dbo].[PaymentTransaction] (
  [Id] [nvarchar](50) NOT NULL,
  [TranMsg] [nvarchar](250) NULL,
  [TranPayload] [nvarchar](500) NULL,
  [TranStatus] [nvarchar](10) NULL,
  [TranAmount] [decimal](19, 2) NULL,
  [TranDate] [datetime] NULL,
  [PaymentId] [nvarchar](50) NULL,
  CONSTRAINT [PK_PaymentTransaction] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PaymentTransaction]
  ADD CONSTRAINT [FK_PaymentTransaction_Payment_PaymentId] FOREIGN KEY ([PaymentId]) REFERENCES [dbo].[Payment] ([Id])
GO