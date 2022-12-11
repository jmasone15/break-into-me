DROP DATABASE IF EXISTS break_me_db;

CREATE DATABASE break_me_db;

USE break_me_db;

CREATE TABLE games (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(40) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    multiplayer_ind BOOLEAN NOT NULL,
    description VARCHAR(255) NOT NULL,
    active_ind BOOLEAN NOT NULL DEFAULT TRUE,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO games (title, genre, multiplayer_ind, description) VALUES ("Stardew Valley", "Indie Game", true, "You've inherited your grandfather's old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life!");
INSERT INTO games (title, genre, multiplayer_ind, description) VALUES ("Call of Duty", "First-Person Shooter", true, "Call of Duty is a first-person shooter video game franchise published by Activision. Starting out in 2003, it first focused on games set in World War II.");
INSERT INTO games (title, genre, multiplayer_ind, description) VALUES ("Rocket League", "Sports", true, "Rocket League is a fantastical sport-based video game, developed by Psyonix (it's “soccer with cars”). It features a competitive game mode based on teamwork and outmaneuvering opponents.");
INSERT INTO games (title, genre, multiplayer_ind, description) VALUES ("Doom", "First Person Shooter", false, "Doom is a 1993 first-person shooter (FPS) game developed by id Software for MS-DOS. Players assume the role of a space marine, popularly known as Doomguy, fighting their way through hordes of invading demons from hell.");
INSERT INTO games (title, genre, multiplayer_ind, description) VALUES ("Pokemon", "RPG", true, "The original Pokémon is a role-playing game based around building a small team of monsters to battle other monsters in a quest to become the best. Pokémon are divided into types, such as water and fire, each with different strengths.");
INSERT INTO games (title, genre, multiplayer_ind, description) VALUES ("Elden Ring", "Open World", false, "Elden Ring is an action role-playing game played in a third person perspective, with gameplay focusing on combat and exploration.");
INSERT INTO games (title, genre, multiplayer_ind, description) VALUES ("LEGO Star War", "Action-Adventure", true, "Where to begin… LEGO® Star Wars™ is one of our most beloved themes ever, inspiring Jedi of all ages for over two decades. From meter-long (40+ in.) Imperial Star Destroyers.");
INSERT INTO games (title, genre, multiplayer_ind, description) VALUES ("Kirby", "Action-Platform", false, "The series centers around the adventures of a pink hero named Kirby as he fights to protect and save his home on the distant Planet Popstar from a variety of threats.");
INSERT INTO games (title, genre, multiplayer_ind, description) VALUES ("Age of Empires IV", "Real-Time Strategy", true, "Age of Empires 4 is all about moving your civilization of choice through the Dark Age, Feudal Age, Castle Age, and Imperial Age, all while balancing economy and military as you try to defeat your opponent.");
INSERT INTO games (title, genre, multiplayer_ind, description) VALUES ("Super Smash Bros", "Fighting", true, "The Super Smash Bros. series is a crossover series of multiplayer fighting games in which many well-known Nintendo characters are pitted against each other to fight, with each character using their unique abilities in battle.");