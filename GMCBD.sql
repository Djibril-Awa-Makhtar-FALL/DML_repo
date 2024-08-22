-- creation de la BASE de DONNEES GMCS
CREATE DATABASE GMCDB;

--utilisation de la BASE de DONNEES GMCDB

USE GMCDB;

-- creation de la table produits

 CREATE TABLE produits(
 IDproduits INT IDENTITY(1,1) PRIMARY KEY,
	nom VARCHAR(20) NOT NULL,
	prix DECIMAL(10, 2) NOT NULL
 );
 
 --insertion des enregistrements dans la table produits

 INSERT INTO produits (nom, prix) VALUES ('Cookies', 10.00);

 INSERT INTO produits (nom, prix) VALUES ('Bonbon', 5.20);

 -- Création de la table clients

 CREATE TABLE clients(
 IDclients INT IDENTITY(1,1) PRIMARY KEY,
 nom VARCHAR(15) NOT NULL,
 adresse VARCHAR(15) NOT NULL
 );
 -- insertion des enregistrements dans la table clients
 INSERT INTO clients (nom, adresse) VALUES ('Ahmed', 'Tunisie');
 INSERT INTO clients (nom, adresse) VALUES ('Coulibaly', 'Sénégal');
 INSERT INTO clients (nom, adresse) VALUES ('Hasan', 'Egypte');

 -- Création de la table commandes 

CREATE TABLE commandes (
    IDcommande INT IDENTITY(1,1) PRIMARY KEY,
    customerid INT NOT NULL,
    productid INT NOT NULL,
    quantity INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customerid) REFERENCES clients(IDclients),
    FOREIGN KEY (productid) REFERENCES produits(IDproduits)
);

-- Insertion des enregistrements
INSERT INTO commandes (customerid, productid, quantity, order_date) 
VALUES (1, 2, 3, '2023-01-22');

INSERT INTO commandes (customerid, productid, quantity, order_date) 
VALUES (2, 1, 10, '2023-04-14');
 
 -- Mettez à jour la quantité e la deuxième commande.
 UPDATE commandes 
 SET quantity = 10
 WHERE quantity = 6

 -- Supprimez le troisième client de la table des clients.

 DELETE FROM clients
 WHERE nom = 'Hasan'

 --Supprimez le contenu du tableau des commandes, puis supprimez le tableau.

 DELETE FROM commandes

 DROP TABLE commandes
