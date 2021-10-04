CREATE FUNCTION public.last_updated() RETURNS trigger
    LANGUAGE plpgsql
AS
$$
BEGIN
    NEW.last_update = CURRENT_TIMESTAMP;
    RETURN NEW;
END
$$;

ALTER FUNCTION public.last_updated() OWNER TO guest;

