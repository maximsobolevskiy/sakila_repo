CREATE TABLE public.language
(
    language_id integer   DEFAULT NEXTVAL('language_language_id_seq'::regclass) NOT NULL PRIMARY KEY,
    name        char(20)                                                        NOT NULL,
    last_update timestamp DEFAULT NOW()                                         NOT NULL
);

ALTER TABLE public.language
    OWNER TO guest;

CREATE TRIGGER last_updated
    BEFORE UPDATE
    ON public.language
    FOR EACH ROW
EXECUTE PROCEDURE public.last_updated();

