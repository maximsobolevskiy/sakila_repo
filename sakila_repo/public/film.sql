CREATE TABLE public.film
(
    film_id              integer       DEFAULT NEXTVAL('film_film_id_seq'::regclass) NOT NULL
        PRIMARY KEY,
    title                varchar(255)                                                NOT NULL,
    description          text,
    release_year         year,
    language_id          smallint                                                    NOT NULL
        REFERENCES public.language
            ON UPDATE CASCADE ON DELETE RESTRICT,
    original_language_id smallint
        REFERENCES public.language
            ON UPDATE CASCADE ON DELETE RESTRICT,
    rental_duration      smallint      DEFAULT 3                                     NOT NULL,
    rental_rate          numeric(4, 2) DEFAULT 4.99                                  NOT NULL,
    length               smallint,
    replacement_cost     numeric(5, 2) DEFAULT 19.99                                 NOT NULL,
    rating               mpaa_rating   DEFAULT 'G'::mpaa_rating,
    last_update          timestamp     DEFAULT NOW()                                 NOT NULL,
    special_features     text[],
    fulltext             tsvector                                                    NOT NULL
);

ALTER TABLE public.film
    OWNER TO guest;

CREATE INDEX film_fulltext_idx
    ON public.film USING gist (fulltext);

CREATE INDEX idx_fk_language_id
    ON public.film (language_id);

CREATE INDEX idx_fk_original_language_id
    ON public.film (original_language_id);

CREATE INDEX idx_title
    ON public.film (title);

CREATE TRIGGER film_fulltext_trigger
    BEFORE INSERT OR UPDATE
    ON public.film
    FOR EACH ROW
EXECUTE PROCEDURE ???('fulltext', 'pg_catalog.english', 'title', 'description');

CREATE TRIGGER last_updated
    BEFORE UPDATE
    ON public.film
    FOR EACH ROW
EXECUTE PROCEDURE public.last_updated();

