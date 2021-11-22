
-- Crie uma SP que recebe o nome de um país e retorne o número de clientes naquele país.

DELIMITER $$
DROP PROCEDURE IF EXISTS clientes_pais;
CREATE PROCEDURE clientes_pais(IN nome VARCHAR(50), OUT numero INT)
BEGIN
    SELECT COUNT(*) INTO numero
    FROM Clientes
    WHERE Pais = nome;

END $$

DELIMITER ;

SET @valor = 0;
CALL clientes_pais("Brazil", @numero);
select @numero;