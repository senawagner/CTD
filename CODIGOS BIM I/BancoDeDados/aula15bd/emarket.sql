USE EMarket;


SELECT DISTINCT Clientes.Contato as "Nome e sobrenome", UPPER(Clientes.Titulo)
FROM Clientes
INNER JOIN Faturas
ON Clientes.ClienteID = Faturas.ClienteID
WHERE Faturas.DataFatura BETWEEN '1996-01-01' and '1996-12-31';


SELECT Clientes.Cidade,
    right(concat("0000", Faturas.FaturaID), 8) as "ID",
    date_format(Faturas.DataFatura, "%Y-%m-%d") as "Data Fatura"
FROM Clientes
INNER JOIN Faturas
ON Clientes.ClienteID = Faturas.ClienteID
WHERE Clientes.Cidade <> Faturas.CidadeEnvio and Clientes.Pais = "UK";