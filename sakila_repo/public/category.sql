CREATE TABLE public.category
(
    category_id integer   DEFAULT NEXTVAL('category_category_id_seq'::regclass) NOT NULL
        PRIMARY KEY,
    name        varchar(25)                                                     NOT NULL,
    last_update timestamp DEFAULT NOW()                                         NOT NULL
);

ALTER TABLE public.category
    OWNER TO guest;

CREATE TRIGGER last_updated
    BEFORE UPDATE
    ON public.category
    FOR EACH ROW
EXECUTE PROCEDURE public.last_updated();

