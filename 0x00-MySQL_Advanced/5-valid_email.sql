-- trigger that resets attribute valid_email only when the email has changed
CREATE TRIGGER v_email BEFORE INSERT ON email
FOR EACH ROW
	BEGIN
		IF (New.email REGEXP '^[a-zA-Z0-9][a-zA-Z0-9._-]*@[a-zA-Z0-9][a-zA-Z0-9._-]*\\.[a‌​-zA-Z]{2,4}$')
			THEN
			UPDATE users SET New.valid_email=0;
		ELSE
			UPDATE users SET New.valid_email=1;
	END;
