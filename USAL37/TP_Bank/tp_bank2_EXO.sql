USE usal37_tp_bank;

SELECT account_id, account_owner, account_balance, bank_name 
FROM accounts 
INNER JOIN banks ON banks.bank_id = accounts.bank_id; 


SELECT account_id, account_owner, account_balance, bank_name 
FROM accounts 
LEFT JOIN banks ON banks.bank_id = accounts.bank_id; 


SELECT account_id, account_owner, account_balance, bank_name 
FROM accounts 
RIGHT JOIN banks ON banks.bank_id = accounts.bank_id; 