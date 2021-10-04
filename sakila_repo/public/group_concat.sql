CREATE AGGREGATE public.group_concat(text) (
    SFUNC = public._group_concat,
    STYPE = text
    );

ALTER AGGREGATE public.group_concat(text) OWNER TO guest;

