SELECT 
sales.id AS 'Id Venta',
sales.date AS Fecha,
sales_products.quantity AS Cantidad,
sales_products.price AS Precio,
SUM(sales_products.quantity * sales_products.price) AS 'Precio total'
FROM
	sales
		JOIN sales_products ON sales.id = sales_products.sale_id
		JOIN products ON products.id = sales_products.products_id
GROUP BY sales.id
