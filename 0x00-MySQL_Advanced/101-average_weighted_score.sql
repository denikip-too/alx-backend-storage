-- creates a stored procedure ComputeAverageWeightedScoreForUsers that computes and store the average weighted score for all students
DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUsers;
DELIMITER $$
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
	UPDATE users AS usr, (SELECT (((SUM(score * weight)) / (SUM(weight))) AS wht FROM corrections AS cor JOIN projects AS pro ON cor.project_id = pro.id GROUP BY cor.user_id), usr.id) AS scr SET average_score = wht WHERE usr.id = scr.id;
END
$$
DELIMITER ;
