  /* Géneros */
INSERT INTO genres (name, icon_url) VALUES ('Accion', 'icono_accion.png');  -- 1
INSERT INTO genres (name, icon_url) VALUES ('Aventura', 'icono_aventura.png'); -- 2
INSERT INTO genres (name, icon_url) VALUES ('Shooter', 'icono_aventura.png'); -- 3
INSERT INTO genres (name, icon_url) VALUES ('Lucha', 'icono_aventura.png'); -- 4
INSERT INTO genres (name, icon_url) VALUES ('RPG', 'icono_aventura.png'); -- 5
INSERT INTO genres (name, icon_url) VALUES ('Plataformas', 'icono_plataformas.png'); -- 6
INSERT INTO genres (name, icon_url) VALUES ('Deportes', 'icono_aventura.png'); -- 7
INSERT INTO genres (name, icon_url) VALUES ('Battle Royale', 'icono_battle_royale.png'); -- 8

/* Desarrolladores */
INSERT INTO developers (name, country, description, website_url) VALUES ('Bethesda', 'EE. UU.', 'Descripción de Bethesda', 'https://www.bethesda.net'); -- 1
INSERT INTO developers (name, country, description, website_url) VALUES ('Ubisoft', 'Francia', 'Descripción de Ubisoft', 'https://www.ubisoft.com'); -- 2 
INSERT INTO developers (name, country, description, website_url) VALUES ('CD Projekt Red', 'Polonia', 'Descripción de CD Projekt Red', 'https://www.cdprojekt.com'); -- 3
INSERT INTO developers (name, country, description, website_url) VALUES ('Insomniac Games', 'EE. UU.', 'Descripción de Insomniac Games', 'https://insomniac.games'); -- 4
INSERT INTO developers (name, country, description, website_url) VALUES ('EA Sports', 'EE. UU.', 'Descripción de EA Sports', 'https://www.ea.com/sports'); -- 5
INSERT INTO developers (name, country, description, website_url) VALUES ('Epic Games', 'EE. UU.', 'Descripción de Epic Games', 'https://www.epicgames.com'); -- 6
INSERT INTO developers (name, country, description, website_url) VALUES ('Psyonix', 'EE. UU.', 'Descripción de Psyonix', 'https://www.psyonix.com'); -- 7


/* Plataformas */
INSERT INTO platforms (name) VALUES ('PlayStation'); -- 1
INSERT INTO platforms (name) VALUES ('Xbox'); -- 2
INSERT INTO platforms (name) VALUES ('PC');  -- 3
INSERT INTO platforms (name) VALUES ('Nintendo Switch'); -- 4

/* Juegos */
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('The Elder Scrolls V: Skyrim', 2011, 'Descripción del Juego 1', 'https://gaming-cdn.com/images/products/146/380x218/the-elder-scrolls-v-skyrim-pc-juego-steam-europe-cover.jpg?v=1661270991', 1, 5);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('Assassins Creed Valhala', 2021, 'Descripción del Juego 2', 'imagen_juego2.png', 2, 5);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('The Witcher 3: Wild Hunt', 2023, 'Descripción de The Witcher 3', 'imagen_witcher3.png', 4, 5);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('Ratchet and Clank: Rift Apart', 2023, 'Descripción de Ratchet and Clank', 'imagen_ratchet_clank.png', 4, 6);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('FIFA 23', 2023, 'Descripción de FIFA 23', 'imagen_fifa23.png', 5, 7);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('Starfield', 2023, 'Descripción de Starfield', 'https://gaming-cdn.com/images/products/2675/380x218/starfield-pc-juego-steam-cover.jpg?v=1694782800', 1, 5);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('Fortnite', 2017, 'Descripción de Fortnite', 'imagen_fortnite.png', 6, 8);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('Rocket League', 2015, 'Descripción de Rocket League', 'imagen_rocketleague.png', 7, 7);


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

