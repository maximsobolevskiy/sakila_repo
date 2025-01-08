CREATE FUNCTION public.sample_function(OUT out_param integer, in_param1 integer, in_param2 integer) RETURNS integer
    LANGUAGE plpgsql AS
$$
DECLARE
    result INT;
BEGIN
    -- Calculating the result
    result := in_param1 + in_param2;
    
    -- Assigning the result to the out parameter
    out_param := result;
    
    
END;
$$;

ALTER FUNCTION public.sample_function(OUT integer, integer, integer) OWNER TO guest;

