-- creates a trigger that decreases quantity of item after adding new order
CREATE TRIGGER decreases_the_quantity_of_an_item
AFTER INSERT ON orders
FOR EACH ROW
	BEGIN
	       UPDATE items
		    SET quantity = quantity-1 WHERE i
	END;
