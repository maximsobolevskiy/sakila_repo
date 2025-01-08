CREATE FUNCTION public.print_hello_world() RETURNS void
    LANGUAGE plpgsql AS
$$
BEGIN
  RAISE NOTICE 'Hello, World!';
END;
$$;

ALTER FUNCTION public.print_hello_world() OWNER TO guest;

