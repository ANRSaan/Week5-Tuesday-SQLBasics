CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(20),
  password VARCHAR(30),
  email VARCHAR(30)
 );

 CREATE TABLE recipe (
    recipe_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    ingredients VARCHAR(255),
    instructions TEXT,
    name VARCHAR(30)
 );

CREATE TABLE occasions (
    occasion_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    name VARCHAR(50),
    time DATETIME,
    public BOOLEAN 
);

CREATE TABLE middleTable (
    middleTable_id SERIAL PRIMARY KEY,
    occasion_id REFERENCES occasions(occasion_id),
    recipe_id REFERENCES recipe(recipe_id)
)

CREATE TABLE groceries (
    groceries_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    ingredients TEXT
)