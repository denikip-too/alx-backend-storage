-- creates a trigger that decreases quantity of item after adding new order
CREATE TRIGGER decrease AFTER INSERT ON orders
FOR EACH ROW
	UPDATE items
	SET quantity = quantity - New.number WHERE name = New.item_name;
