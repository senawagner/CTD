/*
GRUPO 5 - Alexandre Bastos, João Eduardo,  Pedro Henrique Cardoso, Thiago Maurat, Wagner Sena
*/

-- Seleção do Schema
USE emarket;

-- Categorias e produtos

-- 1) Queremos ter uma lista de todas as categorias.
SELECT * FROM categorias;

-- 2) Como as categorias não possuem imagens, você está interessado em obter apenas um Nome e descrição da lista de categorias.
SELECT CategoriaNome, Descricao FROM categorias;

-- 3) Obtenha uma lista dos produtos.
SELECT * FROM produtos;

-- 4) Existem produtos descontinuados? (Descontinuado = 1). Resposta = Não existe
SELECT * FROM produtos WHERE Descontinuado = 1;

-- 5) Na sexta-feira, você deve se reunir com o fornecedor nr. 8. Quais são os produtos que eles fornecem?
SELECT * FROM produtos WHERE ProvedorID = 8;

-- 6) Queremos saber todos os produtos cujo preço unitário se encontra entre 10 e 22.
SELECT * FROM produtos WHERE PrecoUnitario BETWEEN 10 AND 22;

-- 7) Fica definido que um produto deve ser solicitado ao fornecedor se suas unidades em estoque forem inferiores ao nível de reabastecimento. Existem produtos a solicitar?
SELECT * FROM produtos WHERE UnidadesEstoque < NivelReabastecimento;

-- 8) Você quer saber todos os produtos da lista anterior, mas que as unidades pedidas sejam iguais a zero.
SELECT * FROM produtos WHERE UnidadesEstoque < NivelReabastecimento AND UnidadesPedidas = 0;

-- Clientes

-- 1) Obtenha uma lista de todos os clientes com contato, empresa, cargo, País. Classifique a lista por país.
SELECT Contato, Empresa, Titulo, Pais FROM clientes ORDER BY Pais;

-- 2) Queremos atender todos os clientes que possuem o título de  “Proprietário". Esse título estará em inglês (Owner).
SELECT * FROM clientes WHERE Titulo LIKE "Owner"; -- Usar 'LIKE' para pesquisas em Strings ('%' e '_')

-- 3) A operadora de telefonia atendeu um cliente e não lembra o nome dele. Sabe apenas que começa com "C". 
-- Podemos ajudá-lo a obter uma lista com todos os contatos que começam com a letra C?
SELECT * FROM clientes WHERE ClienteID LIKE "C%";

-- Faturas

-- 1) Obtenha uma lista de todas as faturas, ordenadas por data da fatura em ordem ascendente.
SELECT * FROM faturas ORDER BY DataFatura; -- 'ASC' é o comportamento padrão do 'ORDER BY'

-- 2) Agora é necessário uma lista de faturas com o país de envio "EUA" e que a FormaeEnvio seja diferente de 3. Resposta = Inexistente
SELECT * FROM faturas WHERE FormaEnvio != 3 AND PaisEnvio LIKE "EUA";

-- 3) O cliente 'GOURL' fez um pedido? Resposta = 6 pedidos
SELECT * FROM faturas WHERE ClienteID LIKE 'GOURL';

-- 4) Você deseja visualizar todas as faturas dos funcionários 2, 3, 5, 8 e 9.
SELECT * FROM faturas WHERE EmpregadoID IN (2, 3, 5, 8, 9);

-- 2° Parte

-- Produtos

-- 1) Obtenha a lista de todos os produtos em ordem decrescente por preço unitário.
SELECT * FROM produtos ORDER BY PrecoUnitario DESC;

-- 2) Obtenha a lista dos 5 melhores produtos cujo preço unitário é o mais "Caro".
SELECT * FROM produtos ORDER BY PrecoUnitario DESC LIMIT 5;

-- OFFSET - Iniciar o Select a partir de 'x' linhas
-- LIMIT - Limitar resultado em 'x' linhas

-- 3) Obtenha um top 10 dos produtos com mais unidades em estoque.
SELECT * FROM produtos ORDER BY UnidadesEstoque DESC LIMIT 10;