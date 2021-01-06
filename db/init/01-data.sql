\connect test_db;

/*Create some dummy users*/
INSERT INTO public.user (username) VALUES
('goergemiguel'),
('bilbobaggins'),
('peterparker');

/*Create some dummy posts*/
INSERT INTO public.post (title, body, author_id) VALUES
('First post example', 'Lorem ipsum dolor sit amet', 1),
('Second post example', 'Consectetur adipiscing elit', 2),
('Third post example', 'Aenean blandit felis sodales', 3);