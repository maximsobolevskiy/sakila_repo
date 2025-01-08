CREATE TABLE public.person
(
    id             integer,
    last_name      integer,
    first_name     integer,
    middle_initial integer,
    sex            integer,
    birth_year     integer,
    status         integer
);

ALTER TABLE public.person
    OWNER TO guest;

