CREATE TABLE public."Result_1"
(
    actor_id      integer,
    first_name    varchar(1),
    last_name     varchar(1),
    last_update   timestamp(3),
    actor_id_2    integer,
    film_id       integer,
    last_update_2 timestamp(3)
);

ALTER TABLE public."Result_1"
    OWNER TO guest;

