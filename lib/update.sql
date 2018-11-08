UPDATE characters
SET species = 'Martian'
WHERE id=(SELECT id from characters ORDER BY id DESC LIMIT 1 );
