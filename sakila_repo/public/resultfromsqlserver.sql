CREATE TABLE public.resultfromsqlserver
(
    actor_id    integer,
    first_name  varchar(1),
    last_name   varchar(1),
    last_update timestamp(3),
    actor_id_2  integer
);

ALTER TABLE public.resultfromsqlserver
    OWNER TO guest;

