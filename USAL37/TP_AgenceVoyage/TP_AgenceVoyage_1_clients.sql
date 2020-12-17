/*
1) 	Créer la table "sales" (commerciaux) et ajouter 5 commerciaux

2) 	Créer la table "clients" et ajouter 5 clients dans la table
	Chaque client est associé à un commercial différent 
    
3) 	Sélectionnez tous les clients (nom du commercial associé inclus)
*/

use usal37_agence_v;

CREATE table sales
(
	com_code CHAR(5) PRIMARY KEY,
    com_name VARCHAR(64),
    com_password CHAR(60)
);

INSERT INTO sales
(com_code, com_name, com_password) 
VALUES 
('AB201', 'Berthier Aline', 'azerty'),
('NJ247', 'Neymar Jean', 'azerty'),
('PJ714', 'Paute Jessie', 'azerty'),
('PM654', 'Poglio Marcel', 'azerty'),
('YT023', 'Yoyo Tata', 'azerty');


CREATE table clients
(
	client_id INT PRIMARY KEY AUTO_INCREMENT,
    client_lastname VARCHAR(32),
    client_firstname VARCHAR(32),
    client_email VARCHAR(128),
    client_phone CHAR(16),
    client_added DATE,
    client_password CHAR(60)
);

INSERT INTO clients
(client_lastname, client_firstname, client_email, client_phone, client_added, client_password) 
VALUES 
('Dupont', 'Ernest', 'a@a.fr', '0102030405', '2020-12-10', 'azerty'), 
('Dupond', 'Louis', 'b@b.fr', '0203040506', '2020-12-10', 'azerty'), 
('Martin', 'Léo', 'c@c.fr', '0312345678', '2020-12-10', 'azerty'), 
('Devoldère', 'Mickaël', 'd@d.fr', '0678963214', '2020-12-10', 'azerty'), 
('Ben', 'Joe', 'e@e.fr', '0698741235', '2020-12-10', 'azerty');

CREATE TABLE orders
(
	trip_code INT,
    client_id INT,
    order_quantity INT NOT NULL,
    order_paid TINYINT(1) NOT NULL,
    PRIMARY KEY (trip_code, client_id)
    );

ALTER TABLE orders
	ADD CONSTRAINT fk_orders_trips FOREIGN KEY (trip_code) REFERENCES trips(trip_code),
    ADD CONSTRAINT fk_orders_clients FOREIGN KEY (client_id) REFERENCES clients(client_id);

INSERT INTO orders
(trip_code, client_id, order_quantity, order_paid)
VALUES
(1, 5, 2, 1),
(2, 5, 3, 0),
(3, 1, 2, 1);

/* afficher les voyages avec le nom du clients associé */

SELECT* FROM trips
JOIN orders ON trips.trip_code = orders.trip_code
JOIN clients ON orders.client_id = clients.client_id
;
        
        
        
        
        
        