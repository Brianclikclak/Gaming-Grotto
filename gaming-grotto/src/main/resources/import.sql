  /* Géneros */
INSERT INTO genres (name, icon_url) VALUES ('Accion', 'https://www.instant-gaming.com/themes/igv2/modules/categoryMenu/images/category-background1.jpg');  -- 1
INSERT INTO genres (name, icon_url) VALUES ('Aventura', 'https://www.instant-gaming.com/themes/igv2/modules/categoryMenu/images/category-background4.jpg'); -- 2
INSERT INTO genres (name, icon_url) VALUES ('Shooter', 'https://www.instant-gaming.com/themes/igv2/modules/categoryMenu/images/category-background9.jpg'); -- 3
INSERT INTO genres (name, icon_url) VALUES ('Lucha', 'https://www.instant-gaming.com/themes/igv2/modules/categoryMenu/images/category-background7.jpg'); -- 4
INSERT INTO genres (name, icon_url) VALUES ('RPG', 'https://www.instant-gaming.com/themes/igv2/modules/categoryMenu/images/category-background12.jpg'); -- 5
INSERT INTO genres (name, icon_url) VALUES ('Plataformas', 'https://www.instant-gaming.com/themes/igv2/modules/categoryMenu/images/category-background2.jpg'); -- 6
INSERT INTO genres (name, icon_url) VALUES ('Deportes', 'https://www.instant-gaming.com/themes/igv2/modules/categoryMenu/images/category-background16.jpg'); -- 7
INSERT INTO genres (name, icon_url) VALUES ('Battle Royale', 'https://www.instant-gaming.com/themes/igv2/modules/categoryMenu/images/category-background35.jpg'); -- 8
INSERT INTO genres (name, icon_url) VALUES ('Carreras', 'https://www.instant-gaming.com/themes/igv2/modules/categoryMenu/images/category-background8.jpg' ) -- 9

/* Desarrolladores */
INSERT INTO developers (name, country, description, website_url) VALUES ('Bethesda', 'EE. UU.', 'Descripción de Bethesda', 'https://www.bethesda.net'); -- 1
INSERT INTO developers (name, country, description, website_url) VALUES ('Ubisoft', 'Francia', 'Descripción de Ubisoft', 'https://www.ubisoft.com'); -- 2 
INSERT INTO developers (name, country, description, website_url) VALUES ('CD Projekt Red', 'Polonia', 'Descripción de CD Projekt Red', 'https://www.cdprojekt.com'); -- 3
INSERT INTO developers (name, country, description, website_url) VALUES ('Insomniac Games', 'EE. UU.', 'Descripción de Insomniac Games', 'https://insomniac.games'); -- 4
INSERT INTO developers (name, country, description, website_url) VALUES ('EA Sports', 'EE. UU.', 'Descripción de EA Sports', 'https://www.ea.com/sports'); -- 5
INSERT INTO developers (name, country, description, website_url) VALUES ('Epic Games', 'EE. UU.', 'Descripción de Epic Games', 'https://www.epicgames.com'); -- 6
INSERT INTO developers (name, country, description, website_url) VALUES ('Psyonix', 'EE. UU.', 'Descripción de Psyonix', 'https://www.psyonix.com'); -- 7
INSERT INTO developers (name, country, description, website_url) VALUES ('Rockstar', 'EE. UU.', 'Descripción de Rockstar', 'https://www.rockstargames.com'); -- 8

/* Plataformas */
INSERT INTO platforms (name) VALUES ('PlayStation'); -- 1
INSERT INTO platforms (name) VALUES ('Xbox'); -- 2
INSERT INTO platforms (name) VALUES ('PC');  -- 3
INSERT INTO platforms (name) VALUES ('Nintendo Switch'); -- 4

/* Juegos */
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('The Elder Scrolls V: Skyrim', 2011, 'Descripción del Juego 1', 'https://gaming-cdn.com/images/products/146/380x218/the-elder-scrolls-v-skyrim-pc-juego-steam-europe-cover.jpg?v=1661270991', 1, 5);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('Assassins Creed Valhala', 2021, 'Descripción del Juego 2', 'https://www.instant-gaming.com/images/products/6147/380x218/6147.jpg?v=1650550345', 2, 5);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('The Witcher 3: Wild Hunt', 2023, 'Descripción de The Witcher 3', 'https://www.instant-gaming.com/images/products/268/380x218/268.jpg?v=1650526691', 4, 5);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('Ratchet and Clank: Rift Apart', 2023, 'Descripción de Ratchet and Clank', 'https://www.instant-gaming.com/images/products/9665/380x218/9665.jpg?v=1690357205', 4, 6);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('FIFA 23', 2023, 'Descripción de FIFA 23', 'https://www.instant-gaming.com/images/products/10545/380x218/10545.jpg?v=1665157647', 5, 7);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('Starfield', 2023, 'El juego esta ambientado en 300 anos en el futuro, cuando la exploracion espacial regular no solo esta ocurriendo, sino que tambien se ha normalizado mucho. Eres miembro de Constelacion, que es una organizacion de exploradores espaciales, la ultima organizacion de exploradores espaciales, de hecho. No pierdas el tiempo preguntandote que les paso a todos los demas exploradores y por que estan reducidos a un grupo, continua con el juego.', 'https://gaming-cdn.com/images/products/2675/380x218/starfield-pc-juego-steam-cover.jpg?v=1694782800', 1, 5);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('Fortnite', 2017, 'Descripción de Fortnite', 'https://gaming-cdn.com/images/products/2500/380x218/fortnite-pc-juego-epic-games-cover.jpg?v=1645021449', 6, 8);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('Rocket League', 2015, 'Descripción de Rocket League', 'https://www.instant-gaming.com/images/products/670/380x218/670.jpg?v=1644693795', 7, 9);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('Red Dead Redemption II', 2015, 'Descripción de Red Dead Redemption II ', 'https://www.instant-gaming.com/images/products/5679/380x218/5679.jpg?v=1647026658', 8, 3);



-- Asociar  'The Elder Scrolls V: Skyrim' con las plataformas
INSERT INTO game_platform (game_id, platform_id) VALUES (1, 1); -- PlayStation
INSERT INTO game_platform (game_id, platform_id) VALUES (1, 2); -- Xbox
INSERT INTO game_platform (game_id, platform_id) VALUES (1, 3); -- PC

-- Asociar  'Assassin''s Creed Valhala' con las plataformas
INSERT INTO game_platform (game_id, platform_id) VALUES (2, 1); -- PlayStation
INSERT INTO game_platform (game_id, platform_id) VALUES (2, 2); -- Xbox


-- Asociar 'The Witcher 3' con las plataformas
INSERT INTO game_platform (game_id, platform_id) VALUES (3, 1); -- PlayStation
INSERT INTO game_platform (game_id, platform_id) VALUES (3, 2); -- Xbox
INSERT INTO game_platform (game_id, platform_id) VALUES (3, 3); -- PC
INSERT INTO game_platform (game_id, platform_id) VALUES (3, 4); -- Nintendo Switch

-- Asociar 'Ratchet and Clank' con las plataformas
INSERT INTO game_platform (game_id, platform_id) VALUES (4, 1); -- PlayStation
INSERT INTO game_platform (game_id, platform_id) VALUES (4, 4); -- Nintendo Switch

-- Asociar 'FIFA 23' con las plataformas
INSERT INTO game_platform (game_id, platform_id) VALUES (5, 1); -- PlayStation
INSERT INTO game_platform (game_id, platform_id) VALUES (5, 2); -- Xbox
INSERT INTO game_platform (game_id, platform_id) VALUES (5, 3); -- PC
INSERT INTO game_platform (game_id, platform_id) VALUES (5, 4); -- Nintendo Switch

-- Asociar 'Starfield' con las plataformas
INSERT INTO game_platform (game_id, platform_id) VALUES (6, 1); -- PlayStation
INSERT INTO game_platform (game_id, platform_id) VALUES (6, 2); -- Xbox
INSERT INTO game_platform (game_id, platform_id) VALUES (6, 3); -- PC

-- Asociar 'Fortnite' con las plataformas
INSERT INTO game_platform (game_id, platform_id) VALUES (7, 1); -- PlayStation
INSERT INTO game_platform (game_id, platform_id) VALUES (7, 2); -- Xbox
INSERT INTO game_platform (game_id, platform_id) VALUES (7, 3); -- PC
INSERT INTO game_platform (game_id, platform_id) VALUES (7, 4); -- Nintendo Switch

-- Asociar 'Rocket League' con las plataformas
INSERT INTO game_platform (game_id, platform_id) VALUES (8, 1); -- PlayStation
INSERT INTO game_platform (game_id, platform_id) VALUES (8, 2); -- Xbox
INSERT INTO game_platform (game_id, platform_id) VALUES (8, 3); -- PC
INSERT INTO game_platform (game_id, platform_id) VALUES (8, 4); -- Nintendo Switch

-- Asociar 'Red Dead Redemption 2' con las plataformas
INSERT INTO game_platform (game_id, platform_id) VALUES (INSERTA_EL_ID_DEL_JUEGO_REDEMPTION_2, 1); -- PlayStation
INSERT INTO game_platform (game_id, platform_id) VALUES (INSERTA_EL_ID_DEL_JUEGO_REDEMPTION_2, 2); -- Xbox
INSERT INTO game_platform (game_id, platform_id) VALUES (INSERTA_EL_ID_DEL_JUEGO_REDEMPTION_2, 3); -- PC

