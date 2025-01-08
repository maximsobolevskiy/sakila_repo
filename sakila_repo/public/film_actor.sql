CREATE TABLE public.film_actor
(
    actor_id    smallint                NOT NULL REFERENCES public.actor ON UPDATE CASCADE ON DELETE RESTRICT,
    film_id     smallint                NOT NULL REFERENCES public.film ON UPDATE CASCADE ON DELETE RESTRICT,
    last_update timestamp DEFAULT NOW() NOT NULL,
    PRIMARY KEY (actor_id, film_id)
);

ALTER TABLE public.film_actor
    OWNER TO guest;

CREATE INDEX idx_fk_film_id ON public.film_actor (film_id);

CREATE TRIGGER last_updated
    BEFORE UPDATE
    ON public.film_actor
    FOR EACH ROW
EXECUTE PROCEDURE public.last_updated();

