CREATE TABLE public.nyc_opendata_catalog
(
    typeex      text,
    name        text,
    description text,
    url         text,
    rating      text,
    category    text,
    keywords    text,
    comments    text,
    uid         text
);

ALTER TABLE public.nyc_opendata_catalog
    OWNER TO guest;

