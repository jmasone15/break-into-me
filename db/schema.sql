DROP DATABASE IF EXISTS break_me_db;

CREATE DATABASE break_me_db;

CREATE TABLE games (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(40) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    multiplayer_ind BOOLEAN NOT NULL,
    active_ind BOOLEAN NOT NULL DEFAULT TRUE,
    created_at DATETIME NOT NULL DEFAULT NOW,
    updated_at DATETIME NOT NULL DEFAULT NOW
);

INSERT INTO games (title, genre, multiplayer_ind) VALUES ("Stardew Valley", "Indie Game", true);
INSERT INTO games (title, genre, multiplayer_ind) VALUES ("Call of Duty", "First-Person Shooter", true);
INSERT INTO games (title, genre, multiplayer_ind) VALUES ("Rocket League", "Sports", true);
INSERT INTO games (title, genre, multiplayer_ind) VALUES ("Doom", "First Person Shooter", false);
INSERT INTO games (title, genre, multiplayer_ind) VALUES ("Pokemon", "RPG", true);
INSERT INTO games (title, genre, multiplayer_ind) VALUES ("Elden Ring", "Open World", false);
INSERT INTO games (title, genre, multiplayer_ind) VALUES ("LEGO Star War", "Action-Adventure", true);
INSERT INTO games (title, genre, multiplayer_ind) VALUES ("Kirby", "Action-Platform", false);
INSERT INTO games (title, genre, multiplayer_ind) VALUES ("Age of Empires IV", "Real-Time Strategy", true);
INSERT INTO games (title, genre, multiplayer_ind) VALUES ("Super Smash Bros", "Fighting", true);