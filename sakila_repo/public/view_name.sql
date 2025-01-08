CREATE VIEW public.view_name(actor_id, first_name, last_name, last_update) AS
SELECT
    actor.actor_id,
    actor.first_name,
    actor.last_name,
    actor.last_update
FROM actor;

ALTER TABLE public.view_name
    OWNER TO guest;

