DROP DATABASE IF EXISTS pokemon_tcg;
CREATE DATABASE pokemon_tcg;
USE pokemon_tcg;

CREATE TABLE Players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    level INT,
    XP INT,
    matches_played INT,
    matches_won INT,
    player_rank INT
);

CREATE TABLE Decks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT,
    deck_name VARCHAR(255),
    deck_type VARCHAR(255),
    FOREIGN KEY (player_id) REFERENCES Players(id)
);

CREATE TABLE Cards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(50),
    hp INT,
    attack INT,
    defense INT,
    rarity VARCHAR(50),
    deck_id INT,
    FOREIGN KEY (deck_id) REFERENCES Decks(id)
);

CREATE TABLE Matches (
    id INT AUTO_INCREMENT PRIMARY KEY,
    player1_id INT,
    player2_id INT,
    winner_id INT,
    date DATE,
    result VARCHAR(255),
    rounds INT,
    FOREIGN KEY (player1_id) REFERENCES Players(id),
    FOREIGN KEY (player2_id) REFERENCES Players(id),
    FOREIGN KEY (winner_id) REFERENCES Players(id)
);

CREATE TABLE Rounds (
    id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT,
    round_number INT,
    FOREIGN KEY (match_id) REFERENCES Matches(id)
);

CREATE TABLE Turns (
    id INT AUTO_INCREMENT PRIMARY KEY,
    round_id INT,
    player_id INT,
    turn_number INT,
    action VARCHAR(255),
    FOREIGN KEY (round_id) REFERENCES Rounds(id),
    FOREIGN KEY (player_id) REFERENCES Players(id)
);

CREATE TABLE Actions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    round_id INT,
    player_id INT,
    card_id INT,
    turn_id INT,
    action VARCHAR(255),
    FOREIGN KEY (round_id) REFERENCES Rounds(id),
    FOREIGN KEY (player_id) REFERENCES Players(id),
    FOREIGN KEY (card_id) REFERENCES Cards(id),
    FOREIGN KEY (turn_id) REFERENCES Turns(id)
);

CREATE TABLE Deck_Cards (
    deck_id INT,
    card_id INT,
    quantity INT,
    PRIMARY KEY (deck_id, card_id),
    FOREIGN KEY (deck_id) REFERENCES Decks(id),
    FOREIGN KEY (card_id) REFERENCES Cards(id)
);
