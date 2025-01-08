CREATE TABLE public.film_1
(
    film_id              integer                     NOT NULL,
    title                varchar(255)                NOT NULL,
    description          text,
    language_id          smallint                    NOT NULL,
    original_language_id smallint,
    rental_duration      smallint      DEFAULT 3     NOT NULL,
    rental_rate          numeric(4, 2) DEFAULT 4.99  NOT NULL,
    length               smallint,
    replacement_cost     numeric(5, 2) DEFAULT 19.99 NOT NULL,
    last_update          timestamp     DEFAULT NOW() NOT NULL,
    special_features     text[],
    fulltext             tsvector                    NOT NULL
);

ALTER TABLE public.film_1
    OWNER TO guest;

CREATE TRIGGER film_fulltext_trigger
    BEFORE INSERT OR UPDATE
    ON public.film_1
    FOR EACH ROW
EXECUTE PROCEDURE ???('fulltext', 'pg_catalog.english', 'title', 'description');

