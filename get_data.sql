use upi_transactions;


select 
	t.[TransactionID], 
	[TransactionDate], 
	[Amount], 
	[BankNameSent], 
	[BankNameReceived], 
	[TransactionType], 
	[Status], 
	[TransactionTime], 
	[DeviceType], 
	[PaymentMethod], 
	[Purpose], 
	[PaymentMode], 
	[Currency], 
	c.*,
	m.*
from df_transactions t
join df_customer c
on t.CustomerAccountNumber = c.CustomerAccountNumber
join df_merchant m
on t.MerchantAccountNumber = m.MerchantAccountNumber;