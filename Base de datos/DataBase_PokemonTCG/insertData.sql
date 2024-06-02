USE pokemon_tcg;

INSERT INTO Players (name, email, level, XP, matches_played, matches_won, player_rank) VALUES
('Ash Ketchum', 'ash@example.com', 10, 1500, 100, 75, 1),
('Misty', 'misty@example.com', 8, 1200, 80, 50, 2),
('Brock', 'brock@example.com', 7, 1000, 70, 40, 3),
('Gary Oak', 'gary@example.com', 9, 1400, 90, 65, 4),
('Dawn', 'dawn@example.com', 5, 800, 60, 30, 5),
('Serena', 'serena@example.com', 6, 900, 70, 40, 6),
('Cilan', 'cilan@example.com', 4, 700, 50, 20, 7),
('Clemont', 'clemont@example.com', 7, 1100, 80, 50, 8),
('Iris', 'iris@example.com', 7, 1000, 80, 50, 9),
('Korrina', 'korrina@example.com', 6, 900, 70, 40, 10),
('May', 'may@example.com', 8, 1100, 90, 60, 11),
('Lillie', 'lillie@example.com', 5, 800, 60, 30, 12),
('Mallow', 'mallow@example.com', 6, 900, 70, 40, 13),
('Sophocles', 'sophocles@example.com', 7, 1000, 80, 50, 14),
('Kiawe', 'kiawe@example.com', 8, 1100, 90, 60, 15),
('Lana', 'lana@example.com', 5, 800, 60, 30, 16);

INSERT INTO Decks (player_id, deck_name, deck_type) VALUES
(1, 'Ash\'s Electric Deck', 'Electric'),
(2, 'Misty\'s Water Deck', 'Water'),
(3, 'Brock\'s Rock Deck', 'Rock'),
(4, 'Gary\'s Mixed Deck', 'Mixed'),
(5, 'Dawn\'s Ice Deck', 'Ice'),
(6, 'Serena\'s Fairy Deck', 'Fairy'),
(7, 'Cilan\'s Grass Deck', 'Grass'),
(8, 'Clemont\'s Electric Deck', 'Electric'),
(9, 'Iris\'s Dragon Deck', 'Dragon'),
(10, 'Korrina\'s Fighting Deck', 'Fighting'),
(11, 'May\'s Normal Deck', 'Normal'),
(12, 'Lillie\'s Psychic Deck', 'Psychic'),
(13, 'Mallow\'s Grass Deck', 'Grass'),
(14, 'Sophocles\'s Electric Deck', 'Electric'),
(15, 'Kiawe\'s Fire Deck', 'Fire'),
(16, 'Lana\'s Water Deck', 'Water');

INSERT INTO Cards (name, type, hp, attack, defense, rarity, deck_id) VALUES
('Pikachu', 'Electric', 35, 55, 40, 'Common', 1),
('Bulbasaur', 'Grass', 45, 49, 49, 'Common', 1),
('Charmander', 'Fire', 39, 52, 43, 'Common', 4),
('Squirtle', 'Water', 44, 48, 65, 'Common', 2),
('Jigglypuff', 'Fairy', 115, 45, 20, 'Rare', 4),
('Snorlax', 'Normal', 160, 110, 65, 'Rare', 5),
('Gengar', 'Ghost', 130, 65, 60, 'Rare', 6),
('Chikorita', 'Grass', 45, 49, 65, 'Common', 7),
('Pachirisu', 'Electric', 60, 45, 70, 'Common', 8),
('Dragonite', 'Dragon', 150, 100, 90, 'Rare', 9),
('Lucario', 'Fighting', 120, 110, 70, 'Rare', 10),
('Eevee', 'Normal', 55, 55, 50, 'Common', 11),
('Mewtwo', 'Psychic', 130, 110, 90, 'Rare', 12),
('Leafeon', 'Grass', 65, 60, 65, 'Common', 13),
('Togedemaru', 'Electric', 80, 90, 70, 'Common', 14),
('Turtonator', 'Fire', 130, 100, 90, 'Rare', 15),
('Popplio', 'Water', 50, 55, 55, 'Common', 16);

INSERT INTO Matches (player1_id, player2_id, winner_id, date, result, rounds) VALUES
(1, 2, 1, '2024-05-01', 'Victory', 3),
(2, 1, 2, '2024-05-02', 'Defeat', 2),
(3, 4, 3, '2024-05-03', 'Victory', 4),
(4, 3, 4, '2024-05-04', 'Victory', 5),
(5, 6, 5, '2024-05-05', 'Victory', 4),
(7, 8, 8, '2024-05-06', 'Victory', 3),
(5, 7, 5, '2024-05-07', 'Victory', 5),
(6, 8, 6, '2024-05-08', 'Victory', 2),
(9, 10, 9, '2024-06-01', 'Victory', 3),
(11, 12, 11, '2024-06-02', 'Victory', 2),
(13, 14, 13, '2024-06-03', 'Victory', 4),
(15, 16, 15, '2024-06-04', 'Victory', 5),
(9, 11, 9, '2024-06-05', 'Victory', 3),
(12, 13, 12, '2024-06-06', 'Victory', 2),
(14, 15, 14, '2024-06-07', 'Victory', 4),
(16, 9, 16, '2024-06-08', 'Victory', 5);

INSERT INTO Rounds (match_id, round_number) VALUES
(1, 1), (1, 2), (1, 3),
(2, 1), (2, 2),
(3, 1), (3, 2), (3, 3), (3, 4),
(4, 1), (4, 2), (4, 3), (4, 4), (4, 5),
(5, 1), (5, 2), (5, 3), (5, 4),
(6, 1), (6, 2), (6, 3),
(7, 1), (7, 2), (7, 3), (7, 4), (7, 5),
(8, 1), (8, 2),
(9, 1), (9, 2), (9, 3),
(10, 1), (10, 2),
(11, 1), (11, 2), (11, 3), (11, 4),
(12, 1), (12, 2), (12, 3), (12, 4), (12, 5),
(13, 1), (13, 2), (13, 3),
(14, 1), (14, 2), (14, 3),
(15, 1), (15, 2), (15, 3), (15, 4),
(16, 1), (16, 2), (16, 3), (16, 4), (16, 5);

INSERT INTO Turns (round_id, player_id, turn_number, action) VALUES
(1, 1, 1, 'Attack'), (1, 2, 2, 'Defend'),
(2, 1, 1, 'Draw Card'), (2, 2, 2, 'Attack'),
(3, 1, 1, 'Attack'), (3, 2, 2, 'Draw Card');

INSERT INTO Actions (round_id, player_id, card_id, turn_id, action) VALUES
(1, 1, 1, 1, 'Use Thunderbolt'), (1, 2, 4, 2, 'Defend with Shell'),
(9, 9, 1, 1, 'Use Dragon Claw'), (9, 10, 4, 2, 'Defend with Counter');

INSERT INTO Deck_Cards (deck_id, card_id, quantity) VALUES
(1, 1, 2), (1, 2, 2),
(2, 4, 2), (3, 5, 1),
(4, 3, 3), (5, 6, 1), (6, 7, 2), (7, 8, 2), (8, 9, 2);

