CREATE TYPE public.mpaa_rating AS enum ('G', 'PG', 'PG-13', 'R', 'NC-17');

ALTER TYPE public.mpaa_rating OWNER TO guest;

