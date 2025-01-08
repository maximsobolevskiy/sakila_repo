CREATE TABLE public.sample_table
(
    id    uuid NOT NULL PRIMARY KEY,
    name  varchar(50),
    age   integer,
    email varchar(100)
);

ALTER TABLE public.sample_table
    OWNER TO guest;

