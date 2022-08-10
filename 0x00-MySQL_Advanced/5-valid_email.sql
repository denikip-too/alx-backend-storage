-- trigger that resets attribute valid_email only when the email has changed
DELIMITER $$
CREATE TRIGGER v_email BEFORE UPDATE ON users
FOR EACH ROW
	BEGIN
		IF NEW.email <> OLD.email
			THEN
			SET NEW.valid_email = 0;
		ELSE
			SET NEW.valid_email = 1;
		END IF;
	END
	$$
	DELIMETER ;
