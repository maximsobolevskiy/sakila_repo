CREATE TABLE public.payment_p2007_01
(
    FOREIGN KEY (customer_id) REFERENCES public.customer,
    FOREIGN KEY (rental_id) REFERENCES public.rental,
    FOREIGN KEY (staff_id) REFERENCES public.staff,
    CONSTRAINT payment_p2007_01_payment_date_check CHECK ((payment_date >= '2007-01-01 00:00:00'::timestamp without time zone) AND
                                                          (payment_date < '2007-02-01 00:00:00'::timestamp without time zone))
) INHERITS (public.payment);

ALTER TABLE public.payment_p2007_01
    OWNER TO guest;

CREATE INDEX idx_fk_payment_p2007_01_customer_id ON public.payment_p2007_01 (customer_id);

CREATE INDEX idx_fk_payment_p2007_01_staff_id ON public.payment_p2007_01 (staff_id);

