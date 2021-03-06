use usal37_tp_bank;


SELECT * FROM banks;

SELECT * FROM accounts;

SELECT account_id, account_balance 
FROM accounts 
WHERE account_id=20;


SELECT account_id, account_balance 
FROM accounts 
WHERE account_balance > 3000 OR account_id < 20 AND account_owner LIKE 'M%';


SELECT account_id, account_owner, account_balance, bank_name 
FROM accounts,banks WHERE banks.bank_id = accounts.bank_id;

SELECT account_id, account_owner, account_balance, bank_id 
FROM accounts;

