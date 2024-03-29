-- creates a stored procedure ComputeAverageWeightedScoreForUsers that computes and store the average weighted score for all students
DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUsers;
DELIMITER $$
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN	
	UPDATE users AS usr, (SELECT usr.id, ((SUM(score * weight)) / (SUM(weight))) AS wht FROM users AS usr JOIN corrections AS cor ON cor.user_id = usr.id JOIN projects AS pro ON cor.project_id = pro.id GROUP BY usr.id) AS scr SET average_score = scr.wht WHERE usr.id = scr.id;
END
$$
DELIMITER ;
