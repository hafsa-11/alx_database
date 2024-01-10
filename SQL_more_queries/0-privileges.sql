-- main_0_0.sql

-- Grant privileges for user_0d_1 only if the user doesn't exist
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' IDENTIFIED BY 'password' REQUIRE NONE;

-- main_2_0.sql

-- Attempt to create user_0d_1 with GRANT, expecting an error
CREATE USER 'user_0d_1'@'localhost' IDENTIFIED BY 'password';
