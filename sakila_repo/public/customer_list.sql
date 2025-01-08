CREATE VIEW public.customer_list(id, name, address, "zip code", phone, city, country, notes, sid) AS
SELECT
    renamed.customer_id                                                AS id,
    (renamed.first_name::text || ' '::text) || renamed.last_name::text AS name,
    a.address,
    a.postal_code                                                      AS "zip code",
    a.phone,
    city.city,
    country.country,
    CASE WHEN renamed.activebool THEN 'active'::text ELSE ''::text END AS notes,
    renamed.store_id                                                   AS sid
FROM customer renamed
     LEFT JOIN address a ON renamed.address_id = a.address_id
     JOIN city ON a.city_id = city.city_id
     JOIN country ON city.country_id = country.country_id;

ALTER TABLE public.customer_list
    OWNER TO guest;

