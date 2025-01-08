CREATE TABLE public.sales
(
    id           serial PRIMARY KEY,
    product_name varchar(100),
    sales_amount numeric,
    profit       numeric,
    units_sold   integer,
    discount     numeric,
    expenses     numeric
);

ALTER TABLE public.sales
    OWNER TO guest;

