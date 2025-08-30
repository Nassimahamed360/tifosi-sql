USE tifosi;

-- Marques
INSERT INTO marque (nom) VALUES 
('Coca-Cola'),
('Cristaline'),
('pepsico'),
('Monster');

-- Boissons
INSERT INTO boisson (nom, prix, id_marque) VALUES
('Coca-Cola zéro', 2.50, 1),
('Coca-Cola original', 2.50, 1),
(' Fanta citron', 3.00, 1),
('Fanta Orange', 3.50, 1),
('Capri-sun ', 3.10, 1),
(' Pepsi', 3.23, 3),
(' Pepsi Max zéro', 3.50, 3),
('Lipton zéro citron ', 3.70, 3),
(' Lipton Peach', 3.90, 2),
('Monster energy ultra blue ', 4.00, 4),
(' Monster energy ultra gold', 3.00, 2),
(' Eau de source', 3.00, 2);

-- Focaccias
INSERT INTO focaccia (nom, prix) VALUES 
('Mozaccia',9.80),
('Gogonzollaccia',10.80),
('Raclaccia',8.90),
('Emmentalaccia',9.80),
('Tradizione',8.90),
('Hawaienne',11.20),
('Americaine',10.80),
('Paysanne',12.80);


-- Ingrédients
INSERT INTO ingredient (nom) VALUES
('Base tomate, mozarella, cresson,jambon fumé,ail, ail , artichaut,champigon,poivre,olive noire '),
('Base tomate,Gorgonzola, cresson,ail,champignon,parmesan,poivre,olive noire'),
('Base tomate, raclette, cresson,ail,champignon,parmesan,poivre'),
('Base crème,Emmental,cresson, champignon,parmesan,poivre,oignon'),
('Base emmental, poivre (80g), parmesan,olive noire(10g),olive vert(10g)'),
('Base tomate,Mozarella, cresson,bacon,ananas,piment,parmesan,poivre,olive noire'),
('Base cressan, pommede terre (40g),parmesan,poivre,olive noire'),
('Base crème, chèvre, cresson, pomme de terre ,jambon fumé,ail,artichaut,champignon, parmesan,ppoivre noire,  oeuf');

-- Liaisons Focaccia ↔ Ingrédients
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES
(1, 1), -- Raclaccia contient Mozzarella
(2, 2), -- Raclaccia contient Raclette
(3, 3), -- Raclaccia contient Ail
(4 4), -- Margherita contient Tomate
(5, 5), -- Margherita contient Mozzarella
(6, 6), -- Pepperoni contient Tomate
(7, 7), -- Pepperoni contient Mozzarella
(8, 8); -- Pepperoni contient Champignons
