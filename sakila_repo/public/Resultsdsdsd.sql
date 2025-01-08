CREATE TABLE public."Resultsdsdsd"
(
    actor_id             integer,
    first_name           varchar(1),
    last_name            varchar(1),
    last_update          timestamp(3),
    actor_id_2           integer,
    film_id              integer,
    last_update_2        timestamp(3),
    film_id_2            integer,
    title                varchar(1),
    description          text,
    release_year         varchar(1),
    language_id          smallint,
    original_language_id smallint,
    rental_duration      smallint,
    rental_rate          numeric,
    length               smallint,
    replacement_cost     numeric,
    rating               varchar(1),
    special_features     varchar(1),
    last_update_3        timestamp(3)
);

ALTER TABLE public."Resultsdsdsd"
    OWNER TO guest;

