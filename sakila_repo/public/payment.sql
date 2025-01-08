CREATE TABLE public.payment
(
    payment_id   integer DEFAULT NEXTVAL('payment_payment_id_seq'::regclass) NOT NULL PRIMARY KEY,
    customer_id  smallint                                                    NOT NULL REFERENCES public.customer ON UPDATE CASCADE ON DELETE RESTRICT,
    staff_id     smallint                                                    NOT NULL REFERENCES public.staff ON UPDATE CASCADE ON DELETE RESTRICT,
    rental_id    integer                                                     NOT NULL REFERENCES public.rental ON UPDATE CASCADE ON DELETE SET NULL,
    amount       numeric(5, 2)                                               NOT NULL,
    payment_date timestamp                                                   NOT NULL
);

ALTER TABLE public.payment
    OWNER TO guest;

CREATE INDEX idx_fk_customer_id ON public.payment (customer_id);

CREATE INDEX idx_fk_staff_id ON public.payment (staff_id);

