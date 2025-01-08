CREATE TABLE public.rental
(
    rental_id    integer   DEFAULT NEXTVAL('rental_rental_id_seq'::regclass) NOT NULL PRIMARY KEY,
    rental_date  timestamp                                                   NOT NULL,
    inventory_id integer                                                     NOT NULL REFERENCES public.inventory ON UPDATE CASCADE ON DELETE RESTRICT,
    customer_id  smallint                                                    NOT NULL REFERENCES public.customer ON UPDATE CASCADE ON DELETE RESTRICT,
    return_date  timestamp,
    staff_id     smallint                                                    NOT NULL REFERENCES public.staff ON UPDATE CASCADE ON DELETE RESTRICT,
    last_update  timestamp DEFAULT NOW()                                     NOT NULL
);

ALTER TABLE public.rental
    OWNER TO guest;

CREATE INDEX idx_fk_inventory_id ON public.rental (inventory_id);

CREATE UNIQUE INDEX idx_unq_rental_rental_date_inventory_id_customer_id ON public.rental (rental_date, inventory_id, customer_id);

CREATE TRIGGER last_updated
    BEFORE UPDATE
    ON public.rental
    FOR EACH ROW
EXECUTE PROCEDURE public.last_updated();

