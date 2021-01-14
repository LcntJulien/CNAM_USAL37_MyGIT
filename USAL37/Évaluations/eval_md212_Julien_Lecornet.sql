DROP DATABASE IF EXISTS eval_md212_merise;

CREATE DATABASE eval_md212_merise DEFAULT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';

USE eval_md212_merise;

CREATE TABLE clients
(
	client_id INT AUTO_INCREMENT,
    client_firstname VARCHAR(100) NOT NULL,
    client_lastname VARCHAR(100) NOT NULL,
    client_address VARCHAR(255) NOT NULL,
    client_phone CHAR(16) NOT NULL UNIQUE,
    PRIMARY KEY (client_id)
);

CREATE TABLE repairs
(
	repair_id INT AUTO_INCREMENT,
    repair_type VARCHAR(100) NOT NULL,
    repair_start DATETIME NOT NULL,
    repair_duration VARCHAR(100) NOT NULL,
    repair_price DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (repair_id)
);

CREATE TABLE mechanics
(
	mechanic_id INT AUTO_INCREMENT,
    mechanic_speciality VARCHAR(100) NOT NULL,
    PRIMARY KEY (mechanic_id)
);

ALTER TABLE clients
	ADD 
	CONSTRAINT fk_clients_repairs FOREIGN KEY (repair_id) REFERENCES repairs(repair_id);
    
ALTER TABLE repairs
	ADD 
    CONSTRAINT fk_repairs_mechanics FOREIGN KEY (mechanic_id) REFERENCES mechanics(mechanic_id),
    ADD
    CONSTRAINT fk_repairs_clients FOREIGN KEY (client_id) REFERENCES clients(client_id);
    
ALTER TABLE mechanics
	ADD
    CONSTRAINT fk_mechanics_repairs FOREIGN KEY (repair_id) REFERENCES repairs(repair_id);