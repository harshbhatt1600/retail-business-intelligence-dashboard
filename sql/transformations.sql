
CREATE VIEW customer_total_revenue AS
SELECT
    customer_id,
    SUM(sales) AS total_sales
FROM public_fact_sales_star
GROUP BY customer_id;




UPDATE public_dim_customers c
SET revenue_bucket =
    CASE
        WHEN r.total_sales >= 10000 THEN 'High Value'
        WHEN r.total_sales >= 3000 THEN 'Mid Value'
        ELSE 'Low Value'
    END
FROM customer_total_revenue r
WHERE c.customer_id = r.customer_id;




CREATE VIEW category_profitability AS
SELECT
    p.category,
    SUM(f.sales) AS total_sales,
    SUM(f.profit) AS total_profit,
    AVG(f.discount) AS avg_discount,
    SUM(f.profit) / NULLIF(SUM(f.sales), 0) AS profit_margin
FROM public_fact_sales_star f
JOIN public_dim_products p
    ON f.product_id = p.product_id
GROUP BY p.category;
