CREATE TABLE public.patient
(
    id           varchar(255)                                          NOT NULL PRIMARY KEY,
    cx_id        uuid,
    facility_ids varchar(255)[],
    data         jsonb,
    created_at   timestamp with time zone DEFAULT CURRENT_TIMESTAMP(6) NOT NULL,
    updated_at   timestamp with time zone DEFAULT CURRENT_TIMESTAMP(6) NOT NULL,
    link_data    jsonb,
    version      integer                  DEFAULT 0                    NOT NULL,
    old_id       varchar(255)
);

ALTER TABLE public.patient
    OWNER TO guest;

