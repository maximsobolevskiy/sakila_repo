CREATE TABLE public.payment_p2007_06
(
    FOREIGN KEY (customer_id) REFERENCES public.customer,
    FOREIGN KEY (rental_id) REFERENCES public.rental,
    FOREIGN KEY (staff_id) REFERENCES public.staff,
    CONSTRAINT payment_p2007_06_payment_date_check CHECK ((payment_date >= '2007-06-01 00:00:00'::timestamp without time zone) AND
                                                          (payment_date < '2007-07-01 00:00:00'::timestamp without time zone))
) INHERITS (public.payment);

ALTER TABLE public.payment_p2007_06
    OWNER TO guest;

CREATE INDEX idx_fk_payment_p2007_06_customer_id ON public.payment_p2007_06 (customer_id);

CREATE INDEX idx_fk_payment_p2007_06_staff_id ON public.payment_p2007_06 (staff_id);

