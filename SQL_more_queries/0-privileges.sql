-- Create a stored procedure to drop a user if it exists
DELIMITER //
CREATE PROCEDURE drop_user_if_exists(username VARCHAR(255), hostname VARCHAR(255))
BEGIN
    DECLARE user_count INT;

    -- Check if the user exists
    SELECT COUNT(*)
    INTO user_count
    FROM mysql.user
    WHERE user = username AND host = hostname;

    -- Drop the user if it exists
    IF user_count > 0 THEN
        SET @drop_user_query = CONCAT('DROP USER ', QUOTE(username), '@', QUOTE(hostname));
        PREPARE drop_user_stmt FROM @drop_user_query;
        EXECUTE drop_user_stmt;
        DEALLOCATE PREPARE drop_user_stmt;
        SELECT 'User dropped successfully' AS 'msg';
    ELSE
        SELECT 'User does not exist' AS 'msg';
    END IF;
END //
DELIMITER ;

-- Call the procedure for user_0d_1
CALL drop_user_if_exists('user_0d_1', 'localhost');

-- Call the procedure for user_0d_2
CALL drop_user_if_exists('user_0d_2', 'localhost');

