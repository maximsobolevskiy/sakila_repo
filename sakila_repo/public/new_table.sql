CREATE TABLE public.new_table
(
    col integer NOT NULL
);

ALTER TABLE public.new_table
    OWNER TO guest;

