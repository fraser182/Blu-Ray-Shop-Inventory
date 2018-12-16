DROP TABLE IF EXISTS blurays;
DROP TABLE IF EXISTS suppliers;

CREATE TABLE suppliers(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  telephone VARCHAR(255),
  website VARCHAR(255)
);

CREATE TABLE blurays (
id SERIAL PRIMARY KEY,
name VARCHAR(255),
description TEXT,
stock_quantity INT,
stock_level VARCHAR(255),
cost_price NUMERIC (4,2),
selling_price NUMERIC (4,2),
genre VARCHAR(255),
imdb_rating NUMERIC (3, 1),
supplier_id INT REFERENCES suppliers(id) ON DELETE CASCADE
);
