CREATE TABLE public.country
(
    country_id  integer   DEFAULT NEXTVAL('country_country_id_seq'::regclass) NOT NULL
        PRIMARY KEY,
    country     varchar(45)                                                   NOT NULL,
    last_update timestamp DEFAULT NOW()                                       NOT NULL
);

ALTER TABLE public.country
    OWNER TO guest;

CREATE TRIGGER last_updated
    BEFORE UPDATE
    ON public.country
    FOR EACH ROW
EXECUTE PROCEDURE public.last_updated();

