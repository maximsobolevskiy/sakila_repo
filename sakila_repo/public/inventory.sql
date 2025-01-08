CREATE TABLE public.inventory
(
    inventory_id integer   DEFAULT NEXTVAL('inventory_inventory_id_seq'::regclass) NOT NULL PRIMARY KEY,
    film_id      smallint                                                          NOT NULL REFERENCES public.film ON UPDATE CASCADE ON DELETE RESTRICT,
    store_id     smallint                                                          NOT NULL REFERENCES public.store ON UPDATE CASCADE ON DELETE RESTRICT,
    last_update  timestamp DEFAULT NOW()                                           NOT NULL,
    name         text
);

ALTER TABLE public.inventory
    OWNER TO guest;

CREATE INDEX idx_store_id_film_id ON public.inventory (store_id, film_id);

CREATE TRIGGER last_updated
    BEFORE UPDATE
    ON public.inventory
    FOR EACH ROW
EXECUTE PROCEDURE public.last_updated();

