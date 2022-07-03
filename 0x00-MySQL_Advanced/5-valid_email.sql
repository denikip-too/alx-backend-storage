-- trigger that resets attribute valid_email only when the email has changed
CREATE TRIGGER v_email BEFORE INSERT ON email
FOR EACH ROW
	BEGIN
		UPDATE users SET email=New.email;
		IF (New.email REGEXP '^[^@]+@[^@]+\.[^@]{2,}$') THEN SET valid_email=0;
	END;
