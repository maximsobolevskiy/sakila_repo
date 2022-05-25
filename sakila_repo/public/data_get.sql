CREATE FUNCTION public.data_get() RETURNS json
    SECURITY DEFINER
    LANGUAGE plpgsql
AS
$$
BEGIN

  RETURN JSON_BUILD_OBJECT('data', ARRAY_TO_JSON(ARRAY_AGG(ROW_TO_JSON(r))))
    FROM
  (SELECT
     t.actor_id
   FROM public.actor AS t) r;

END
$$;

ALTER FUNCTION public.data_get() OWNER TO guest;

