CREATE TABLE public.actor
(
    actor_id    integer   DEFAULT NEXTVAL('actor_actor_id_seq'::regclass) NOT NULL PRIMARY KEY,
    first_name  varchar(45)                                               NOT NULL,
    last_name   varchar(45)                                               NOT NULL,
    last_update timestamp DEFAULT NOW()                                   NOT NULL
);

COMMENT ON TABLE public.actor IS 'table with actorss';

ALTER TABLE public.actor
    OWNER TO guest;

CREATE INDEX idx_actor_last_name ON public.actor (last_name);

CREATE TRIGGER last_updated
    BEFORE UPDATE
    ON public.actor
    FOR EACH ROW
EXECUTE PROCEDURE public.last_updated();

