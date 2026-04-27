insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'Full metal jacket', 'https://pad.mymovies.it/filmclub/2006/04/020/locandina.jpg', 1987);
insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'Non e'' un paese per vecchi', 'https://musicart.xboxlive.com/7/89d04600-0000-0000-0000-000000000002/504/image.jpg',2007);
insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'The founder', 'https://pad.mymovies.it/filmclub/2016/03/235/locandina.jpg',2016);
insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'Harry Potter e la pietra filosofale', 'https://pad.mymovies.it/filmclub/2001/12/001/locandina.jpg',2001);
insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'Il pianeta delle scimmie', 'https://media-assets.wired.it/photos/615daad62707bc568326abfa/master/w_1600,c_limit/war-for-the-planet-of-the-apes1.jpg',2001);
insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'Lo chiamavano Jeeg Robot', 'https://www.rai.it/dl/img/2016/02/23/1280x720_1456237082397_jeegrobot.jpg',2015);
insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'Yesterday', 'https://citynews-today.stgy.ovh/~media/horizontal-mid/20648620006811/yesterday-film-poster-movie-universal-pictures-2.jpg',2019);
insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'Inception', 'https://pad.mymovies.it/filmclub/2010/01/011/locandina.jpg', 2010);
insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'Pulp Fiction', 'https://pad.mymovies.it/filmclub/2006/08/046/locandina.jpg', 1994);
insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'Interstellar', 'https://pad.mymovies.it/filmclub/2014/01/001/locandina.jpg', 2014);
insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'Parasite', 'https://pad.mymovies.it/filmclub/2019/05/012/locandina.jpg', 2019);
insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'Il Gladiatore', 'https://pad.mymovies.it/filmclub/2000/05/011/locandina.jpg', 2000);
insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'Whiplash', 'https://pad.mymovies.it/filmclub/2014/05/054/locandina.jpg', 2014);
insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'Mad Max: Fury Road', 'https://pad.mymovies.it/filmclub/2012/07/045/locandina.jpg', 2015);
insert into movie (id, title, url_image, year) values(nextval('movie_seq'), 'Spider-Man: Un nuovo universo', 'https://pad.mymovies.it/filmclub/2018/06/001/locandina.jpg', 2018)
-- Pulp Fiction (Link da Wikimedia)
update movie set url_image = 'https://upload.wikimedia.org/wikipedia/commons/3/3b/Pulp_Fiction_%281994%29_poster.jpg' where title = 'Pulp Fiction';

-- Parasite (Link alternativo)
update movie set url_image = 'https://mr.comingsoon.it/imgdb/locandine/235x336/56230.jpg' where title = 'Parasite';

-- Il Gladiatore (Link alternativo)
update movie set url_image = 'https://mr.comingsoon.it/imgdb/locandine/235x336/943.jpg' where title = 'Il Gladiatore';