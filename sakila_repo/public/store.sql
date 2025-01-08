CREATE TABLE public.store
(
    store_id         integer   DEFAULT NEXTVAL('store_store_id_seq'::regclass) NOT NULL PRIMARY KEY,
    manager_staff_id smallint                                                  NOT NULL REFERENCES public.staff ON UPDATE CASCADE ON DELETE RESTRICT,
    address_id       smallint                                                  NOT NULL REFERENCES public.address ON UPDATE CASCADE ON DELETE RESTRICT,
    last_update      timestamp DEFAULT NOW()                                   NOT NULL
);

ALTER TABLE public.store
    OWNER TO guest;

CREATE UNIQUE INDEX idx_unq_manager_staff_id ON public.store (manager_staff_id);

CREATE TRIGGER last_updated
    BEFORE UPDATE
    ON public.store
    FOR EACH ROW
EXECUTE PROCEDURE public.last_updated();

