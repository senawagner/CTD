select pais_cobranca as PAIS, SUM(valor_total) as TOTAL
from faturas
group by pais_cobranca
order by TOTAL desc; 


-- Quantidade de clientes por pais
select count(id) as QTD, pais
from clientes
group by pais desc;

-- Quantidade de clientes por pais
select count(id) as QTD, pais
from clientes
group by pais 
having QTD > 5
order by QTD desc;

select pais, count(id) 
from clientes
where pais like "b%";



-- Para não repetir paises
select distinct cidade, pais from clientes;