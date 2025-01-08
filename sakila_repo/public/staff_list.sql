CREATE VIEW public.staff_list(id, name, address, "zip code", phone, city, country, sid) AS
SELECT s.staff_id                                             AS id,
       (s.first_name::text || ' '::text) || s.last_name::text AS name,
       a.address,
       a.postal_code                                          AS "zip code",
       a.phone as phone,
       city.city,
       country.country,
       s.store_id                                             AS sid
FROM staff s
         JOIN address a ON s.address_id = a.address_id
         JOIN city ON a.city_id = city.city_id
         JOIN country ON city.country_id = country.country_id;

ALTER TABLE public.staff_list
    OWNER TO guest;

