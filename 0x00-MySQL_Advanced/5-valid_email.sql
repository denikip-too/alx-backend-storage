-- trigger that resets attribute valid_email only when the email has changed
CREATE TRIGGER v_email BEFORE INSERT ON email
FOR EACH ROW
	BEGIN
		UPDATE users SET valid_email=New.email;
	END;
