CREATE TABLE public.city
(
    city_id     integer   DEFAULT NEXTVAL('city_city_id_seq'::regclass) NOT NULL PRIMARY KEY,
    city        varchar(50)                                             NOT NULL,
    country_id  smallint                                                NOT NULL REFERENCES public.country ON UPDATE CASCADE ON DELETE RESTRICT,
    last_update timestamp DEFAULT NOW()                                 NOT NULL
);

ALTER TABLE public.city
    OWNER TO guest;

CREATE INDEX idx_fk_country_id ON public.city (country_id);

CREATE TRIGGER last_updated
    BEFORE UPDATE
    ON public.city
    FOR EACH ROW
EXECUTE PROCEDURE public.last_updated();

