

CREATE TABLE public_dim_customers (
    customer_id VARCHAR PRIMARY KEY,
    customer_name VARCHAR,
    segment VARCHAR,
    revenue_bucket VARCHAR
);

CREATE TABLE public_dim_products (
    product_id VARCHAR PRIMARY KEY,
    product_name VARCHAR,
    category VARCHAR,
    sub_category VARCHAR
);

CREATE TABLE public_dim_dates (
    date_key DATE PRIMARY KEY,
    year INT,
    quarter VARCHAR,
    month INT,
    month_name VARCHAR
);



CREATE TABLE public_fact_sales_star (
    order_id VARCHAR,
    customer_id VARCHAR,
    product_id VARCHAR,
    date_key DATE,
    sales NUMERIC,
    quantity INT,
    discount NUMERIC,
    profit NUMERIC,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (customer_id) REFERENCES public_dim_customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES public_dim_products(product_id),
    FOREIGN KEY (date_key) REFERENCES public_dim_dates(date_key)
);
