-- creates a trigger that decreases quantity of item after adding new order
CREATE TRIGGER decrease BEFORE INSERT ON orders
FOR EACH ROW
	BEGIN
		UPDATE items SET NEW.quantity=quantity-1;
END;
