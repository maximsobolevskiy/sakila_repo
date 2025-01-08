CREATE TABLE public.staff
(
    staff_id    integer   DEFAULT NEXTVAL('staff_staff_id_seq'::regclass) NOT NULL PRIMARY KEY,
    first_name  varchar(45)                                               NOT NULL,
    last_name   varchar(45)                                               NOT NULL,
    address_id  smallint                                                  NOT NULL REFERENCES public.address ON UPDATE CASCADE ON DELETE RESTRICT,
    email       varchar(50),
    store_id    smallint                                                  NOT NULL REFERENCES public.store,
    active      boolean   DEFAULT TRUE                                    NOT NULL,
    username    varchar(16)                                               NOT NULL,
    password    varchar(40),
    last_update timestamp DEFAULT NOW()                                   NOT NULL,
    picture     bytea
);

ALTER TABLE public.staff
    OWNER TO guest;

CREATE TRIGGER last_updated
    BEFORE UPDATE
    ON public.staff
    FOR EACH ROW
EXECUTE PROCEDURE public.last_updated();

