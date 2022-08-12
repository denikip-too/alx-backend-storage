-- creates a stored procedure ComputeAverageWeightedScoreForUser that computes and store the average weighted score for a student
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
	DECLARE avg_weighted_score FLOAT;
	SET avg_weighted_score = (SELECT ((SUM(score * weight)) / SUM(weight)) FROM corrections AS cor WHERE cor.user_id = user_id JOIN projects AS pro WHERE pro.id = cor.project_id);
	UPDATE users SET average_score = avg_weighted_score WHERE id = user_id;
END
$$
DELIMITER ;
