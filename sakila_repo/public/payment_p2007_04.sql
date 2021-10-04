CREATE TABLE public.payment_p2007_04
(
    FOREIGN KEY (customer_id) REFERENCES public.customer,
    FOREIGN KEY (rental_id) REFERENCES public.rental,
    FOREIGN KEY (staff_id) REFERENCES public.staff,
    CONSTRAINT payment_p2007_04_payment_date_check
        CHECK ((payment_date >= '2007-04-01 00:00:00'::timestamp WITHOUT TIME ZONE) AND
               (payment_date < '2007-05-01 00:00:00'::timestamp WITHOUT TIME ZONE))
)
    INHERITS (public.payment);

ALTER TABLE public.payment_p2007_04
    OWNER TO guest;

CREATE INDEX idx_fk_payment_p2007_04_customer_id
    ON public.payment_p2007_04 (customer_id);

CREATE INDEX idx_fk_payment_p2007_04_staff_id
    ON public.payment_p2007_04 (staff_id);

