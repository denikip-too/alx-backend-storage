-- creates a stored procedure AddBonus that adds a new correction for student
CREATE PROCEDURE AddBonus(IN users_id INT, IN project_name VARCHAR(15), IN score FLOAT)
BEGIN
	INSERT INTO users (id) VALUES (users_id);
	CREATE TABLE IF NOT EXISTS projects;
	ALTER TABLE projects ADD ROW IF NOT EXISTS name;
	INSERT INTO projects (name) VALUES (project_name);
	INSERT INTO correction (users.id, project_name, score) VALUES (users.id, project_name, score);
END
