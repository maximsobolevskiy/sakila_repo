CREATE TABLE public.address
(
    address_id  integer   DEFAULT NEXTVAL('address_address_id_seq'::regclass) NOT NULL PRIMARY KEY,
    address     varchar(55)                                                   NOT NULL,
    address2    varchar(50),
    district    varchar(20)                                                   NOT NULL,
    city_id     smallint                                                      NOT NULL REFERENCES public.city ON UPDATE CASCADE ON DELETE RESTRICT,
    postal_code varchar(10),
    phone       varchar(20)                                                   NOT NULL,
    last_update timestamp DEFAULT NOW()                                       NOT NULL
);

ALTER TABLE public.address
    OWNER TO guest;

CREATE INDEX idx_fk_city_id ON public.address (city_id);

CREATE TRIGGER last_updated
    BEFORE UPDATE
    ON public.address
    FOR EACH ROW
EXECUTE PROCEDURE public.last_updated();

