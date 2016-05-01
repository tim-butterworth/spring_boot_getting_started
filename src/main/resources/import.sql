INSERT INTO Publisher (name) VALUES ('Marvel');
INSERT INTO Publisher (name) VALUES ('Dark Horse');
INSERT INTO Publisher (name) VALUES ('DC');
INSERT INTO Publisher (name) VALUES ('Charlton');

INSERT INTO Title (name) VALUES ('The Amazing Spider-Man');

INSERT INTO Title (name) VALUES ('Detective Comics');

INSERT INTO Volume (name) VALUES ('Volume 1')
INSERT INTO Volume (name) VALUES ('Volume 2')
INSERT INTO Volume (name) VALUES ('Volume 3')

INSERT INTO Issue (issue_number, title) VALUES (1, 'Spider-Man')
INSERT INTO Issue (issue_number, title) VALUES (2, 'Duel to the Death With The Vulture')
INSERT INTO Issue (issue_number, title) VALUES (3, 'Spider-Man Vs. Doctor Octopus')
INSERT INTO Issue (issue_number, title) VALUES (4, 'Nothing Can Stop... The Sandman!')
INSERT INTO Issue (issue_number, title) VALUES (5, 'Marked For Destruction by Dr. Doom!')
INSERT INTO Issue (issue_number, title) VALUES (6, 'Face-To-Face With... The Lizard!')
INSERT INTO Issue (issue_number, title) VALUES (7, 'The Return of The Vulture!')
INSERT INTO Issue (issue_number, title) VALUES (8, 'The Terrible Threat of The Living Brain!')
INSERT INTO Issue (issue_number, title) VALUES (9, 'The Man Called Electro!')
INSERT INTO Issue (issue_number, title) VALUES (10, 'The Enforcers!')

INSERT INTO publisher_title (publisher_id, title_id) VALUES ((select id from Publisher where name = 'Marvel'), (select id from Title where name = 'The Amazing Spider-Man'));
INSERT INTO publisher_title (publisher_id, title_id) VALUES ((select id from Publisher where name = 'DC'), (select id from Title where name = 'Detective Comics'));

INSERT INTO title_volumes (title_id, volumes_id) VALUES ((select id from  Title where name = 'The Amazing Spider-Man'), (select id from Volume where name ='Volume 1'));
INSERT INTO title_volumes (title_id, volumes_id) VALUES ((select id from  Title where name = 'The Amazing Spider-Man'), (select id from Volume where name ='Volume 2'));
INSERT INTO title_volumes (title_id, volumes_id) VALUES ((select id from  Title where name = 'The Amazing Spider-Man'), (select id from Volume where name ='Volume 3'));

INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from  Volume where name = 'Volume 1'), (select id from Issue where issue_number = 1));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from  Volume where name = 'Volume 1'), (select id from Issue where issue_number = 2));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from  Volume where name = 'Volume 1'), (select id from Issue where issue_number = 3));