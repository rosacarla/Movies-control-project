CREATE TABLE movies(
    id INT PRIMARY KEY,
    type INT NOT NULL, 
    name VARCHAR(30) NOT NULL,
    total_ep INT, 
    atual_ep INT, 
    last_view DATE DEFAULT CURRENT_TIMESTAMP
); 
--
-- criada a tabela movies coom 6 colunas
--
INSERT INTO `movies` (`id`, `type`, `name`, `total_ep`, `atual_ep`, `last_view`)
VALUES (1, 0, 'Friends', 10, 1, current_timestamp());

INSERT INTO `movies` (`id`, `type`, `name`, `last_view`) 
VALUES (2, 1, 'Avengers', current_timestamp())
/*
segunda linha foi preenchida somente com dados existentes, sem mencionar
campos nulos de total_ep e atual_ep.
*/;
INSERT INTO `movies` (`id`, `type`, `name`, `total_ep`, `atual_ep`, `last_view`) 
VALUES (3, 0, 'La Casa de Papel', 23, 10, current_timestamp());

UPDATE `movies` SET `last_view` = '2020-12-14' WHERE `movies`.`id` = 1
/*
alterada data de last_view do id1 Friends para 14/12/2020
*/;
UPDATE `movies` SET `atual_ep` = '10' WHERE `movies`.`id` = 1
/*
alterado episodio visto para 10 da serie id1 Friends
*/;
INSERT INTO `movies` (`id`, `type`, `name`, `total_ep`, `atual_ep`, `last_view`)
VALUES (4, 0, 'Todo mundo odeia o Chris', 20, 1, '2022-02-23'); 

INSERT INTO `movies` (`id`, `type`, `name`, `last_view`)
VALUES (5, 1, 'Avatar', current_timestamp()); 

UPDATE `movies` SET `last_view` = '2009-12-18' WHERE `movies`.`id` = 5
/*
atualizada data de last_view da id5 Avatar
*/ ;
UPDATE `movies` SET `total_ep` = NULL, `atual_ep` = NULL WHERE `movies`.`id` = 5
/*
atualizados atributos para nulo em total_ep e atual_ep na id5 Avatar
*/;
DELETE FROM movies WHERE id=2; 
/*
excluido o filme id2 Avengers
*/
INSERT INTO `movies` (`id`, `type`, `name`, `total_ep`, `atual_ep`, `last_view`)
VALUES (1, 'Avengers', NULL, NULL, current_timestamp());
/*
reinserido o filme Avengers e ficou com id 0, antes era 2
*/
UPDATE `movies` SET `id` = '2' WHERE `movies`.`id` = 0; 
/*
atualizada id como 2 para Avengers e aceitou!!!
*/