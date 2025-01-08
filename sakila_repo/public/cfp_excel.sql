CREATE TABLE public.cfp_excel
(
    "Email"       text,
    "Name"        text,
    "Topic"       text,
    "Type"        text,
    "Description" text,
    "Why"         text,
    "Target"      text,
    "Time"        integer,
    "Plan"        text,
    "Slides"      text,
    "Comment"     text
);

ALTER TABLE public.cfp_excel
    OWNER TO guest;

