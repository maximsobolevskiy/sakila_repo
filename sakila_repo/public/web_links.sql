CREATE TABLE public.web_links
(
    id           serial PRIMARY KEY,
    website_name varchar(255) NOT NULL,
    website_url  varchar(255) NOT NULL,
    description  text
);

ALTER TABLE public.web_links
    OWNER TO guest;

