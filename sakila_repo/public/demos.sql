CREATE TABLE public.demos
(
    date    text,
    emails  text,
    company varchar(550)
);

ALTER TABLE public.demos
    OWNER TO guest;

