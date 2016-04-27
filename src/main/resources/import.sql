INSERT INTO Publisher (name) VALUES ('Marvel');
INSERT INTO Publisher (name) VALUES ('Dark Horse');
INSERT INTO Publisher (name) VALUES ('DC');
INSERT INTO Publisher (name) VALUES ('Charlton');

INSERT INTO Title (name) VALUES ('The Amazing Spider-Man');

INSERT INTO Title (name) VALUES ('Detective Comics');

INSERT INTO Volume (name) VALUES ('Volume 1')
INSERT INTO Volume (name) VALUES ('Volume 2')
INSERT INTO Volume (name) VALUES ('Volume 3')

INSERT INTO publisher_title (publisher_id, title_id) VALUES ((select id from Publisher where name = 'Marvel'), (select id from Title where name = 'The Amazing Spider-Man'));
INSERT INTO publisher_title (publisher_id, title_id) VALUES ((select id from Publisher where name = 'DC'), (select id from Title where name = 'Detective Comics'));

INSERT INTO title_volumes (title_id, volumes_id) VALUES ((select id from  Title where name = 'The Amazing Spider-Man'), (select id from Volume where name ='Volume 1'));
INSERT INTO title_volumes (title_id, volumes_id) VALUES ((select id from  Title where name = 'The Amazing Spider-Man'), (select id from Volume where name ='Volume 2'));
INSERT INTO title_volumes (title_id, volumes_id) VALUES ((select id from  Title where name = 'The Amazing Spider-Man'), (select id from Volume where name ='Volume 3'));