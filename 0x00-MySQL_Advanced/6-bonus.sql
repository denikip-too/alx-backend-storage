-- creates a stored procedure AddBonus that adds a new correction for student
DELIMITER $$
CREATE PROCEDURE AddBonus(IN users_id INT, IN project_name VARCHAR(15), IN score FLOAT)
BEGIN
	INSERT INTO projects (name) VALUES (project_name);
	INSERT INTO correction (users.id, project_name, score) VALUES (users.id, project_name, score);
END
$$
DELIMiTER ;
