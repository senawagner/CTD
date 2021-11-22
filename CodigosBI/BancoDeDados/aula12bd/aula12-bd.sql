
USE EMarket;

-- 1) Obtenha uma lista de todos os clientes que moram no “Brasil” ou “México” 
-- ou que tenham um título que começa com "Vendas" (o termo estará em inglês: ‘Sales’);

SELECT Pais, Titulo FROM Clientes
WHERE Pais = "Brazil" OR Pais = "Mexico" 
OR Titulo LIKE "Sales%";


-- 2) Obtenha uma lista de todos os clientes que pertencem a uma empresa
-- que comece com a letra “A”.

SELECT Empresa FROM Clientes
WHERE Empresa LIKE "A%";



-- 3) Obtenha uma lista com os seguinte dados: Cidade, Contato( renomeie para Nome 
-- e Sobrenome), Título (renomeie para Cargo), de todos os clientes que são da cidade "Madrid".

SELECT Cidade, Contato AS "Nome e Sobrenome", Titulo As "Cargo" FROM Clientes
WHERE Cidade = "Madrid";


-- 4) Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500

SELECT FaturaId FROM Faturas
WHERE FaturaId BETWEEN 10000 and 10500;


-- 5) Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500 ou de
-- clientes com IDs começando com "B".

SELECT FaturaId, ClienteID FROM Faturas
WHERE FaturaId BETWEEN 10000 and 10500
OR ClienteID LIKE "B%";

-- 6) Existem notas fiscais que informam a cidade expedidora “Vancouver” 
-- ou que utilizam FormaEnvio =  3?

SELECT CidadeEnvio, FormaEnvio FROM Faturas
WHERE CidadeEnvio LIKE "Vancouver" OR FormaEnvio = 3;

-- 7) Qual é a identificação do funcionário de “Buchanan”?

SELECT EmpregadoID FROM Empregados
WHERE Sobrenome = "Buchanan";


-- 8) Existem Notas Fiscais com o EmpregadoId do funcionário acima?

SELECT EmpregadoID, FaturaId FROM Faturas
WHERE EmpregadoID = 5;








