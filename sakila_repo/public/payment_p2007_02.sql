CREATE TABLE public.payment_p2007_02
(
    FOREIGN KEY (customer_id) REFERENCES public.customer,
    FOREIGN KEY (rental_id) REFERENCES public.rental,
    FOREIGN KEY (staff_id) REFERENCES public.staff,
    CONSTRAINT payment_p2007_02_payment_date_check CHECK ((payment_date >= '2007-02-01 00:00:00'::timestamp without time zone) AND
                                                          (payment_date < '2007-03-01 00:00:00'::timestamp without time zone))
) INHERITS (public.payment);

ALTER TABLE public.payment_p2007_02
    OWNER TO guest;

CREATE INDEX idx_fk_payment_p2007_02_customer_id ON public.payment_p2007_02 (customer_id);

CREATE INDEX idx_fk_payment_p2007_02_staff_id ON public.payment_p2007_02 (staff_id);

