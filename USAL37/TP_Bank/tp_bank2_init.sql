
DROP DATABASE IF EXISTS usal37_tp_bank;

CREATE DATABASE IF NOT EXISTS usal37_tp_bank DEFAULT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';


USE usal37_tp_bank;


CREATE TABLE banks(
   bank_id INT,
   bank_name VARCHAR(100) NOT NULL,
   PRIMARY KEY(bank_id)
);

CREATE TABLE accounts(
   account_id INT,
   account_owner VARCHAR(255) NOT NULL,
   account_balance DECIMAL(10,2) NOT NULL DEFAULT 0,
   account_overdraft INT NOT NULL DEFAULT 0,
   bank_id INT NOT NULL,
   PRIMARY KEY(account_id),
   FOREIGN KEY(bank_id) REFERENCES banks(bank_id)
);

INSERT INTO banks
(bank_id, bank_name)
VALUES
('1', 'Crédit Mutuel'),
('2', 'Crédit Agricole'),
('3', "Caisse d'épargne");

INSERT INTO accounts
(account_id, account_owner, bank_id)
VALUES
('1', 'Jean-Michel Jar', 1),
('2', 'Paul Brement', 2),
('3', 'Milene Farmer', 3);





