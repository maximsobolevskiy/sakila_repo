CREATE RULE payment_insert_p2007_06 AS
    ON INSERT TO payment
   WHERE new.payment_date >= '2007-06-01 00:00:00'::timestamp without time zone AND new.payment_date < '2007-07-01 00:00:00'::timestamp without time zone DO INSTEAD  INSERT INTO payment_p2007_06 (payment_id, customer_id, staff_id, rental_id, amount, payment_date)
  VALUES (DEFAULT, new.customer_id, new.staff_id, new.rental_id, new.amount, new.payment_date);

