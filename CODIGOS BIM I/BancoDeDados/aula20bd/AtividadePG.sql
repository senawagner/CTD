select count(ator_id)
from ator;

select cliente_id, count(valor) as qtd, sum(valor) as total
from pagamento
where cliente_id = 10
group by cliente_id;

select count(cliente_id)
from cliente c
where ativo = 0;

SELECT f.titulo, c.nome
FROM filme f
JOIN filme_categoria fc ON fc.filme_id = f.filme_id
join categoria c on c.categoria_id = fc.categoria_id
where c.nome like '%act%';