-- creates a stored procedure AddBonus that adds a new correction for student
CREATE PROCEDURE AddBonus()
BEGIN
	INSERT INTO users (user_id) VALUES (NEW.users.id);
	CREATE TABLE IF NOT EXISTS projects;
	ALTER TABLE projects ADD ROW IF NOT EXISTS projects_name;
	INSERT INTO projects (project_name) VALUES (NEW.project_name);
	INSERT INTO correction (score) VALUES (NEW.score);
END;
