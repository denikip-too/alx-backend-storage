-- creates a stored procedure AddBonus that adds a new correction for student
DELIMITER $$
CREATE PROCEDURE AddBonus(IN users_id INT, IN project_name VARCHAR(15), IN score FLOAT)
BEGIN
	DECLARE project_id INT;
	IF NOT EXISTS( SELECT NULL FROM projects.COLUMNS WHERE table_name = 'projects')
		THEN
		ALTER TABLE projects ADD name varchar(255) NOT NULL;
	END IF;
	INSERT INTO projects (name) VALUES (project_name);
	SET project_id = (SELECT id FROM projects WHERE name = project_name LIMIT 1);
	INSERT INTO corrections (users_id, project_id, score) VALUES (users_id, project_id, score);
END
$$
DELIMiTER ;
