CREATE FUNCTION public.film_in_stock(p_film_id integer, p_store_id integer, OUT p_film_count integer) RETURNS SETOF integer
    LANGUAGE sql AS
$$
     SELECT inventory_id
     FROM inventory
     WHERE film_id = $2
     AND store_id = $2
     AND inventory_in_stock(inventory_id);
$$;

ALTER FUNCTION public.film_in_stock(integer, integer, OUT integer) OWNER TO guest;

