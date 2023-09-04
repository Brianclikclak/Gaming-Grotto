 /* Géneros */
INSERT INTO genres (name, icon_url) VALUES ('Accion', 'icono_accion.png');
INSERT INTO genres (name, icon_url) VALUES ('Aventura', 'icono_aventura.png');
 /* Desarrolladores */
INSERT INTO developers (name, country, description, website_url) VALUES ('Bethesda', 'EE. UU.', 'Descripción de Bethesda', 'https://www.bethesda.net');
INSERT INTO developers (name, country, description, website_url) VALUES ('Ubisoft', 'Francia', 'Descripción de Ubisoft', 'https://www.ubisoft.com');
 /* Plataformas */
INSERT INTO platforms (name) VALUES ('PlayStation');
INSERT INTO platforms (name) VALUES ('Xbox');


 /* Juegos */
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('The Elder Scrolls V: Skyrim', 2022, 'Descripción del Juego 1', 'imagen_juego1.png', 1, 1);
INSERT INTO games (title, release_year, description, image, developer_id, genre_id) VALUES ('Assassin''s Creed', 2021, 'Descripción del Juego 2', 'imagen_juego2.png', 2, 2);
