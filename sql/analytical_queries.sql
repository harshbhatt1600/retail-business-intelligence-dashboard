
SELECT
    c.customer_name,
    SUM(f.sales) AS total_sales,
    SUM(f.profit) AS total_profit,
    SUM(f.profit) / NULLIF(SUM(f.sales), 0) AS profit_margin
FROM public_fact_sales_star f
JOIN public_dim_customers c
    ON f.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_profit DESC
LIMIT 10;




SELECT
    c.customer_name,
    SUM(f.profit) AS total_profit
FROM public_fact_sales_star f
JOIN public_dim_customers c
    ON f.customer_id = c.customer_id
GROUP BY c.customer_name
HAVING SUM(f.profit) < 0
ORDER BY total_profit ASC;




SELECT
    p.category,
    AVG(f.discount) AS avg_discount,
    SUM(f.profit) / NULLIF(SUM(f.sales), 0) AS profit_margin
FROM public_fact_sales_star f
JOIN public_dim_products p
    ON f.product_id = p.product_id
GROUP BY p.category
ORDER BY profit_margin DESC;
