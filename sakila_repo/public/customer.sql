CREATE TABLE public.customer
(
    customer_id integer   DEFAULT NEXTVAL('customer_customer_id_seq'::regclass) NOT NULL PRIMARY KEY,
    store_id    smallint                                                        NOT NULL REFERENCES public.store ON UPDATE CASCADE ON DELETE RESTRICT,
    first_name  varchar(45)                                                     NOT NULL,
    last_name   varchar(45)                                                     NOT NULL,
    email       varchar(50),
    address_id  smallint                                                        NOT NULL REFERENCES public.address ON UPDATE CASCADE ON DELETE RESTRICT,
    activebool  boolean   DEFAULT TRUE                                          NOT NULL,
    create_date date      DEFAULT ('now'::text)::date                           NOT NULL,
    last_update timestamp DEFAULT NOW(),
    active_1    integer
);

ALTER TABLE public.customer
    OWNER TO guest;

CREATE INDEX idx_fk_address_id ON public.customer (address_id);

CREATE INDEX idx_fk_store_id ON public.customer (store_id);

CREATE INDEX idx_last_name ON public.customer (last_name);

CREATE TRIGGER last_updated
    BEFORE UPDATE
    ON public.customer
    FOR EACH ROW
EXECUTE PROCEDURE public.last_updated();

