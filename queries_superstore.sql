-- Análise de Vendas
-- Total de Vendas por Região
SELECT Region, 
       SUM(Sales) AS Total_Vendas
FROM superstore
GROUP BY Region
ORDER BY Total_Vendas DESC;

-- Total de Vendas por País
SELECT Country, 
       SUM(Sales) AS Total_Vendas
FROM superstore
GROUP BY Country
ORDER BY Total_Vendas DESC;

-- Total de Vendas e Quantidade Vendida por Produto
SELECT `Product Name`, 
       SUM(Sales) AS Total_Vendas, 
       SUM(Quantity) AS Total_Quantidade_Vendida
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Vendas DESC;

-- Produtos com Maior Margem de Lucro Total
SELECT `Product Name`, 
       SUM(Profit) AS Total_Lucro
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Lucro DESC;

-- Produtos com Maior Margem de Lucro Média
SELECT `Product Name`, 
       AVG(Profit) AS Media_Lucro
FROM superstore
GROUP BY `Product Name`
ORDER BY Media_Lucro DESC;

-- Número de Pedidos por Modalidade de Envio
SELECT `Ship Mode`, 
       COUNT(DISTINCT `Order ID`) AS Numero_Pedidos
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Numero_Pedidos DESC;

-- Tempo Médio de Envio por Modalidade
SELECT `Ship Mode`, 
       AVG(DATEDIFF(Ship Date, Order Date)) AS Tempo_Medio_Envio
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Tempo_Medio_Envio;

-- Vendas e Lucro por Segmento
SELECT Segment, 
       SUM(Sales) AS Total_Vendas, 
       SUM(Profit) AS Total_Lucro
FROM superstore
GROUP BY Segment
ORDER BY Total_Vendas DESC;

-- Tempo Médio de Envio
SELECT AVG(DATEDIFF(Ship Date, Order Date)) AS Tempo_Medio_Envio
FROM superstore;

-- Clientes Mais Lucrativos
SELECT `Customer ID`, 
       SUM(Profit) AS Total_Lucro
FROM superstore
GROUP BY `Customer ID`
ORDER BY Total_Lucro DESC;

-- Frequência de Compra por Cliente
SELECT `Customer ID`, 
       COUNT(DISTINCT `Order ID`) AS Frequencia_Compra
FROM superstore
GROUP BY `Customer ID`
ORDER BY Frequencia_Compra DESC;

