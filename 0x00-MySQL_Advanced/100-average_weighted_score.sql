-- creates a stored procedure ComputeAverageWeightedScoreForUser that computes and store the average weighted score for a student
DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
	DECLARE avg_weighted_score FLOAT;
	SET avg_weighted_score = (SELECT ((SUM(score * weight)) / SUM(weight)) FROM corrections AS cor JOIN projects AS pro ON cor.project_id = pro.id WHERE cor.user_id = user_id);
	UPDATE users SET average_score = avg_weighted_score WHERE id = user_id;
END
$$
DELIMITER ;
