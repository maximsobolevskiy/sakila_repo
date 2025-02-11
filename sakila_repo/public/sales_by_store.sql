CREATE VIEW public.sales_by_store(store, manager, total_sales, country) AS
SELECT
    (c.city::text || ','::text) || cy.country::text        AS store,
    (m.first_name::text || ' '::text) || m.last_name::text AS manager,
    SUM(p.amount)                                          AS total_sales,
    cy.country
FROM payment p
     JOIN rental r ON p.rental_id = r.rental_id
     JOIN inventory i ON r.inventory_id = i.inventory_id
     JOIN store s ON i.store_id = s.store_id
     JOIN address a ON s.address_id = a.address_id
     JOIN city c ON a.city_id = c.city_id
     JOIN country cy ON c.country_id = cy.country_id
     JOIN staff m ON s.manager_staff_id = m.staff_id
GROUP BY cy.country, c.city, s.store_id, m.first_name, m.last_name, cy.country
ORDER BY cy.country, c.city, cy.country;

ALTER TABLE public.sales_by_store
    OWNER TO guest;

