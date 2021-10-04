CREATE FUNCTION public._group_concat(text, text) RETURNS text
    IMMUTABLE
    LANGUAGE sql
AS
$$
SELECT CASE
  WHEN $2 IS NULL THEN $1
  WHEN $1 IS NULL THEN $2
  ELSE $1 || ', ' || $2
END
$$;

ALTER FUNCTION public._group_concat(text, text) OWNER TO guest;

