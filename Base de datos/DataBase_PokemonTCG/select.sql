USE pokemon_tcg;

SELECT * FROM Cards;

SELECT * FROM Players;

SELECT * FROM Decks;

SELECT * FROM Matches;

SELECT * FROM Rounds;

SELECT * FROM Turns;

SELECT * FROM Actions;

SELECT 
    p.name AS player_name,
    p.level,
    p.XP,
    d.deck_name,
    d.deck_type
FROM Players p
JOIN Decks d ON p.id = d.player_id;

SELECT 
    d.deck_name,
    c.name AS card_name,
    c.type AS card_type,
    c.hp,
    c.attack,
    c.defense,
    c.rarity,
    dc.quantity
FROM Decks d
JOIN Deck_Cards dc ON d.id = dc.deck_id
JOIN Cards c ON dc.card_id = c.id;

SELECT 
    p.name AS player_name,
    COUNT(*) AS matches_won
FROM Matches m
JOIN Players p ON m.winner_id = p.id
GROUP BY p.name;

SELECT 
    p.name AS player_name,
    COUNT(*) AS rounds_won
FROM Rounds r
JOIN Matches m ON r.match_id = m.id
JOIN Players p ON m.winner_id = p.id
GROUP BY p.name;


