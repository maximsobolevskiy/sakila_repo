CREATE TABLE public.dg2023report
(
    "Processing Date" text,
    "Order Ref"       text,
    po                text,
    "Customer PO"     text,
    customer          text,
    product           text,
    "Amount Currency" text,
    "Amount USD"      text
);

ALTER TABLE public.dg2023report
    OWNER TO guest;

