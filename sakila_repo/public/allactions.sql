CREATE TABLE public.allactions
(
    event                       text,
    "Action  Id"                text,
    place                       text,
    "Left confidence interval"  double precision,
    ratio                       double precision,
    "Right confidence interval" double precision,
    users                       integer,
    events                      text,
    average                     text
);

ALTER TABLE public.allactions
    OWNER TO guest;

