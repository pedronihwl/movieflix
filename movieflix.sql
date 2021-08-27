CREATE TABLE tb_genre (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(255)
);
CREATE TABLE tb_movie (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	title VARCHAR(255),
	subtitle VARCHAR(255),
	year INTEGER,
	img_url VARCHAR(255),
	synopsis TEXT,
	genre_id INTEGER
);
CREATE TABLE tb_review (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	text TEXT,
	user_id INTEGER,
	movie_id INTEGER
);
CREATE TABLE tb_user (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(255),
	email VARCHAR(255),
	password VARCHAR(255)
);
CREATE TABLE tb_role (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	authority VARCHAR(255)
);

CREATE TABLE tb_user_role (
	user_id INTEGER NOT NULL, 
	role_id INTEGER NOT NULL, 
	
	PRIMARY KEY (user_id, role_id)
);

ALTER TABLE tb_user_role ADD CONSTRAINT FK_role FOREIGN KEY (role_id) REFERENCES tb_role;
ALTER TABLE tb_user_role ADD CONSTRAINT FK_user FOREIGN KEY (user_id) REFERENCES tb_user;
ALTER TABLE tb_movie ADD CONSTRAINT FK_genre FOREIGN KEY (genre_id) REFERENCES tb_genre;
ALTER TABLE tb_review ADD CONSTRAINT FK_movie FOREIGN KEY (movie_id) REFERENCES tb_movie;
ALTER TABLE tb_review ADD CONSTRAINT FK_user FOREIGN KEY (user_id) REFERENCES tb_user;
alter table tb_user add constraint UK_email unique (email);

--

INSERT INTO tb_genre (name) VALUES ('Aventura'), ('Terror'), ('Drama');

INSERT INTO tb_role (authority) VALUES ('ROLE_VISITOR'), ('ROLE_MEMBER');

INSERT INTO tb_movie(title, subtitle, year, img_url, synopsis, genre_id) VALUES ('Perdido em Marte', 'Tragam-no para casa', 2015, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/3dPhs7hUnQLphDFzdkD407VZDYo.jpg', 'O astronauta Mark Watney (Matt Damon) é enviado a uma missão em Marte. Após uma severa tempestade ele é dado como morto, abandonado pelos colegas e acorda sozinho no misterioso planeta com escassos suprimentos, sem saber como reencontrar os companheiros ou retornar à Terra.', 1);
INSERT INTO tb_movie(title, subtitle, year, img_url, synopsis, genre_id) VALUES ('Rua do Medo: 1666 – Parte 3', 'Acabe com a maldição', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/6viJBbovWxJYavdjPy7UPTLvaOS.jpg', 'De volta a 1666, Deena descobre a verdade sobre Sarah Fier. Em 1994, os amigos lutam para sobreviver e pelo futuro de Shadyside.', 2);
INSERT INTO tb_movie(title, subtitle, year, img_url, synopsis, genre_id) VALUES ('Rua do Medo: 1978 - Parte 2', 'Descubra a verdade', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/sXw75q37IsFWgIIrjMZwfCXO1BF.jpg', 'Na cidade amaldiçoada de Shadyside, uma onda de assassinatos aterroriza o Acampamento Nightwing, transformando as férias em uma luta pela sobrevivência.', 2);
INSERT INTO tb_movie(title, subtitle, year, img_url, synopsis, genre_id) VALUES ('Rua do Medo: 1994 - Parte 1', 'Encare o medo', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/5C8bfwglg91uZhc2fbfpSjNGamV.jpg', 'Depois de uma série de assassinatos brutais, um grupo de adolescentes enfrenta uma força maligna que aterroriza a cidade há séculos. Bem-vindos a Shadyside.', 2);
INSERT INTO tb_movie(title, subtitle, year, img_url, synopsis, genre_id) VALUES ('The owl house', 'A casa coruja', 2020, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/eJe7mLivQYur3FhC9xamIfPgXJ8.jpg', 'Luz, uma adolescente humana segura de si, tropeça acidentalmente em um portal para um reino mágico, onde faz amizade com uma bruxa rebelde.', 1);
INSERT INTO tb_movie(title, subtitle, year, img_url, synopsis, genre_id) VALUES ('Hamilton', 'Five Founding Fathers, Three Sisters - Over A Decade, in One Night', 2020, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/5WPApUD0ttcu9fVeNIOPo9D3KqW.jpg', 'Hamilton é um musical que conta a história da América por vozes americanas. Por meio da história de um dos principais fundadores americanos e primeiro secretário do Tesouro, Alexander Hamilton, a trilha sonora que mistura hip-hop, jazz, R&B e Broadway revoluciona o teatro no The Richard Rodgers Theatre, na Broadway, em junho de 2016.', 3);
INSERT INTO tb_movie(title, subtitle, year, img_url, synopsis, genre_id) VALUES ('O Rei do Show', 'O impossível se torna realidade.', 2017, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/lrNKm3HNvGdZoAfiBKu7b04FLHN.jpg', 'De origem humilde e desde a infância sonhando com um mundo mágico, P.T. Barnum (Hugh Jackman) desafia as barreiras sociais se casando com a filha do patrão do pai e dá o pontapé inicial na realização de seu maior desejo abrindo uma espécie de museu de curiosidades. O empreendimento fracassa, mas ele logo vislumbra uma ousada saída: produzir um grande show estrelado por freaks, fraudes, bizarrices e rejeitados de todos os tipos.', 3);
INSERT INTO tb_movie(title, subtitle, year, img_url, synopsis, genre_id) VALUES ('Velozes & Furiosos 9: A Saga Velozes & Furiosos', 'Its all about family!', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/xXHZeb1yhJvnSHPzZDqee0zfMb6.jpg', 'Dominic Toretto e sua família precisam enfrentar o seu irmão mais novo Jakob, um assassino mortal que está trabalhando com uma antiga inimiga, a cyber-terrorista Cipher.', 1);
INSERT INTO tb_movie(title, subtitle, year, img_url, synopsis, genre_id) VALUES ('Duna', 'Além Do Medo. O Destino Aguarda.', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/aknvFyJUQQoZFtmFnYzKi4vGv4J.jpg', 'Em um futuro distante, planetas são comandados por casas nobres que fazem parte de um império feudal intergalático. Paul Atreides é um jovem homem cuja família toma controle do planeta deserto Arrakis, também conhecido como Duna. A única fonte da especiaria melange, a substância mais importante do cosmos, Arrakis se prova ser um planeta nem um pouco fácil de governar.', 1);
INSERT INTO tb_movie(title, subtitle, year, img_url, synopsis, genre_id) VALUES ('A Star Is Born', 'Nasce uma estrela', 2018, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/dlTTBkz2l90stPlBxSdXwb8gGsQ.jpg', 'Um músico ajuda uma jovem cantora a encontrar fama quando a idade e o alcoolismo enviam sua própria carreira para uma espiral descendente.', 3);

INSERT INTO tb_user(name, email, password) VALUES ('Bob Brown','bob@gmail.com','$2a$12$rDDpT81Etn8tSh9cQhzWbeSh17ug2CoeRBsQuc0BNF7LRABYRYejy');
INSERT INTO tb_user(name, email, password) VALUES ('Ana Luiza','ana@gmail.com','$2a$12$rDDpT81Etn8tSh9cQhzWbeSh17ug2CoeRBsQuc0BNF7LRABYRYejy');
INSERT INTO tb_user(name, email, password) VALUES ('Miguel Lobato','miguel@gmail.com','$2a$12$rDDpT81Etn8tSh9cQhzWbeSh17ug2CoeRBsQuc0BNF7LRABYRYejy');

INSERT INTO tb_review(text, user_id, movie_id) VALUES ('Lorem ipsum began as scrambled, nonsensical Latin derived from Ciceros 1st-century BC text De Finibus Bonorum et Malorum', 2, 1);
INSERT INTO tb_review(text, user_id, movie_id) VALUES ('Lorem ipsum began as scrambled, nonsensical Latin derived from Ciceros 1st-century BC text De Finibus Bonorum et Malorum', 2, 3);
INSERT INTO tb_review(text, user_id, movie_id) VALUES ('Lorem ipsum began as scrambled, nonsensical Latin derived from Ciceros 1st-century BC text De Finibus Bonorum et Malorum', 3, 2);
INSERT INTO tb_review(text, user_id, movie_id) VALUES ('Lorem ipsum began as scrambled, nonsensical Latin derived from Ciceros 1st-century BC text De Finibus Bonorum et Malorum', 2, 5);
INSERT INTO tb_review(text, user_id, movie_id) VALUES ('Lorem ipsum began as scrambled, nonsensical Latin derived from Ciceros 1st-century BC text De Finibus Bonorum et Malorum', 3, 3);

INSERT INTO tb_user_role VALUES (1,1);
INSERT INTO tb_user_role VALUES (2,2);
INSERT INTO tb_user_role VALUES (3,1);
INSERT INTO tb_user_role VALUES (3,2);
