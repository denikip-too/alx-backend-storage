-- creates a table users if the table doesn't exist
CREATE TABLE IF NOT EXISTS users (id int(10) NOT NULL AUTO_INCREMENT, email varchar(255) NOT NULL UNIQUE, name varchar(255), PRIMARY KEY (id));
