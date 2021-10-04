CREATE TABLE public.film_category
(
    film_id     smallint                NOT NULL
        REFERENCES public.film
            ON UPDATE CASCADE ON DELETE RESTRICT,
    category_id smallint                NOT NULL
        REFERENCES public.category
            ON UPDATE CASCADE ON DELETE RESTRICT,
    last_update timestamp DEFAULT NOW() NOT NULL,
    PRIMARY KEY (film_id, category_id)
);

ALTER TABLE public.film_category
    OWNER TO guest;

CREATE TRIGGER last_updated
    BEFORE UPDATE
    ON public.film_category
    FOR EACH ROW
EXECUTE PROCEDURE public.last_updated();

