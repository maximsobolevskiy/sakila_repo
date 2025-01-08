CREATE TABLE public."ResultFromMySQL"
(
    actor_id             integer,
    first_name           varchar(4368),
    last_name            varchar(4368),
    last_update          timestamp,
    actor_id_2           integer,
    film_id              integer,
    last_update_2        timestamp,
    film_id_2            integer,
    title                varchar(4368),
    description          text,
    release_year         smallint,
    language_id          smallint,
    original_language_id smallint,
    rental_duration      smallint,
    rental_rate          numeric,
    length               integer,
    replacement_cost     numeric,
    rating               char,
    special_features     char,
    last_update_3        timestamp
);

ALTER TABLE public."ResultFromMySQL"
    OWNER TO guest;

