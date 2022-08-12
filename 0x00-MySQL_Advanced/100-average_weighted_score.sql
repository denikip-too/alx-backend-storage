-- creates a stored procedure ComputeAverageWeightedScoreForUser that computes and store the average weighted score for a student
DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
	DECLARE avg_weighted_score FLOAT;
	SET avg_weighted_score = (SELECT ((SUM(score * weight)) / SUM(weight)) FROM corrections AS cor JOIN projects AS pro ON pro.id = cor.project_id WHERE cor.user_id = user_id);
	UPDATE users SET average_score = avg_weighted_score WHERE id = user_id;
END
$$
DELIMITER ;
