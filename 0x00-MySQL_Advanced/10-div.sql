-- creates a function SafeDiv that divides (and returns) the first by the second number or returns 0 if the second number is equal to 0
CREATE FUNCTION SafeDiv(a INT, b INT)
BEGIN
  IF b == 0
    RETURN 0;
  ELSE
    RETURN (a / b);
  END IF;
END
