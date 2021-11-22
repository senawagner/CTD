USE EMarket;


-- 1
select correios.Empresa, round(sum(faturas.Transporte), 2) as "Transporte Total"
from correios
left join faturas
on correios.CorreioID = faturas.FormaEnvio
group by correios.Empresa;

-- 2
select clientes.Contato as "Nome", clientes.Endereco as "Endereco", clientes.CodigoPostal1 as "CEP"
from clientes
where clientes.ClienteID not in (select ClienteID from faturas);

 -- 3
 select categorias.CategoriaNome as "Categoria Nome", (replace(produtos.ProdutoNome, "Chef", "CHEF") , replace(produtos.ProdutoNome, "Mix", "MIX") as "Nome Produto"
 from categorias
 left join produtos
 on categorias.CategoriaID = produtos.CategoriaID;