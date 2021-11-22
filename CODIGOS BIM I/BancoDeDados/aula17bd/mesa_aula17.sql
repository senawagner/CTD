use EMarket;

-- Parte I
-- Clientes

-- 1. Crie uma View com os seguintes dados do cliente: Id, contato, Fax e o telefone.

create view Clientes_p1ex1 as
select 
	ClienteID,
    Contato,
    Fax,
    Telefone
from clientes
;

-- 2. Liste os números de telefone dos clientes que não possuem fax.
-- Faça isso de duas maneiras diferentes:

-- a. Consultando a tabela clientes
create view Clientes_p1ex2a as
select
	Contato,
    Telefone
from clientes
where Fax = ""
;

-- b. Consultando a view do cliente
create view Clientes_p1ex2b as
select
	Contato,
    Telefone
from Clientes_p1ex1
where Fax = ""
;

-- Fornecedores / Provedores

-- 1. Crie uma view com os seguintes dados do fornecedor: Id, contato,
-- empresa e endereço. Para o endereço, pegue o endereço, cidade, código
-- postal e país.

create view Fornecedores_p1ex1 as
select 
	ProvedorID,
    Contato,
    Empresa,
    concat(Endereco, ", ", Cidade,", ", CodigoPostal,", ", Pais) as Endereco
from Provedores
;

-- 2. Liste os fornecedores que moram na Avenida das Americanas, no Brasil.
-- Faça de duas formas diferentes:

-- a. Consultando a tabela de fornecedores
create view Fornecedores_p1ex2a as
select 
	Endereco,
    Pais
from Provedores
where Pais = "Brazil"
and Endereco like "%das Americanas%"
;

-- b. Consultando a view do fornecedor
create view Fornecedores_p1ex2b as
select 
	a.Endereco,
    b.Pais
from Fornecedores_p1ex1 a
inner join provedores b on a.ProvedorID = b.ProvedorID
where b.Pais = "Brazil"
and a.Endereco like "%das Americanas%"
;
    

-- Parte II
-- Produtos

-- 1. Crie uma view dos produtos que será usada ​​para controle de estoque.
-- Inclua o id e nome do produto, preço unitário arredondado sem decimais, unidades
-- em estoque e as unidades encomendadas. Inclua também uma nova coluna PRIORIDADE, com os seguintes valores:

-- BAIXA se as unidades encomendadas forem zero
-- MÉDIA se as unidades pedidas forem menores do que as unidades em estoque
-- URGENTE se as unidades pedidas não dobrarem o número de unidades em estoque
-- PRIORITÁRIO caso contrário
create view Produtos_p2ex1 as
select 
    ProdutoID,
    ProdutoNome,
    format(PrecoUnitario, 0) as PrecoArredondado,
    UnidadesEstoque,
    UnidadesPedidas,
    case when UnidadesPedidas = 0 then "BAIXA"
	when UnidadesPedidas < UnidadesEstoque then "MÉDIA"
	when (UnidadesPedidas * 2) >= UnidadesEstoque then "URGENTE"
    else "PRIORITÁRIO"
    end as Prioridade
from produtos
;
    
-- 2.  É necessário um relatório para identificar problemas de estoque.
-- Utilizando a view criada no exercício anterior, indique, para cada prioridade, quantos produtos existem e seu preço médio.
-- Não inclua prioridades para as que possuem menos de 5 produtos.
    
select 
	Prioridade,
    COUNT(ProdutoNome) as qtdProdutos,
    SUM(UnidadesEstoque) UnidadesEstoque,
	format(AVG(PrecoArredondado),0) as PrecoArredondado
from Produtos_p2ex1
group by Prioridade
having qtdProdutos >= 5
;