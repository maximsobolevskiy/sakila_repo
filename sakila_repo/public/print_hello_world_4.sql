CREATE FUNCTION public.print_hello_world_4() RETURNS void
    LANGUAGE plpgsql AS
$$
BEGIN
  RAISE NOTICE 'Hello, World!';
END;
$$;

ALTER FUNCTION public.print_hello_world_4() OWNER TO guest;

