-- creates a table users if If the table doesn't exists
CREATE TABLE IF NOT EXISTS users (id int(10) NOT NULL AUTO_INCREMENT, email varchar(255) NOT NULL UNIQUE, name varchar(255), country ENUM ('US', 'CO', 'TN') DEFAULT 'US' NOT NULL, PRIMARY KEY (id));
