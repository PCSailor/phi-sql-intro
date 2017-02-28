/* SELECT columns FROM table; */
SELECT "track", "artist" FROM "songs";

/* Use * for wildcard SELECT all columns */
SELECT * FROM "songs";

/* LIMIT number of rows */
SELECT * FROM "songs" LIMIT 10;

/* Getting records 20 - 30 */
SELECT * FROM "songs" LIMIT 10 OFFSET 20;

/* SELECT matching WHERE condition is met */
SELECT * FROM "songs" WHERE "id" = 100;

/* SELECT matching WHERE condition is met */
SELECT * FROM "songs" WHERE "id" >= 100;

/* LIKE matches */
SELECT * FROM "songs" WHERE "track" LIKE '%er';

SELECT * FROM "songs" WHERE "track" LIKE '%er%';

/* COUNT the results */
SELECT COUNT(*) FROM "songs" WHERE "track" ILIKE '%fire%';

SELECT COUNT(*) FROM "songs" WHERE LOWER("track") LIKE '%fire%';

/* 
WHERE conditions can be joined with AND, OR & NOT 
SELECT all columns from songs where the artist has an 'a' in the name AND was published after 1/1/2000 OR track has fire in the name.
*/
SELECT * FROM "songs"
WHERE ("artist" LIKE '%a%' AND "published" > '1/1/2000')
OR "track" ILIKE '%fire%';

/* ORDER BY column ASC (or DESC)*/
SELECT * FROM "songs" ORDER BY "published" DESC LIMIT 10;

/* UPDATE */
UPDATE "songs" SET artist='Chris Black' WHERE id = 1;









