CREATE TABLE public.cfp
(
    "Timestamp"   text,
    "Username"    text,
    "Name"        text,
    "Topic"       text,
    "Type"        text,
    "Description" text,
    "Important "  text,
    "Audience "   text,
    "Time"        text,
    "Comment"     text
);

ALTER TABLE public.cfp
    OWNER TO guest;

