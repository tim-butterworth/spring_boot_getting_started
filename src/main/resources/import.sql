INSERT INTO Publisher (name) VALUES ('Marvel');
INSERT INTO Publisher (name) VALUES ('DC');
INSERT INTO Publisher (name) VALUES ('Charlton');
INSERT INTO Publisher (name) VALUES ('Dark Horse');

INSERT INTO Title (name) VALUES ('The Amazing Spider-Man');
INSERT INTO Title (name) VALUES ('Detective Comics');
INSERT INTO Title (name) VALUES ('Justice League of America');

//new MarvelTitle table
INSERT INTO MarvelTitle (name) VALUES ('The Amazing Spider-Man');

//new DCTitle table
INSERT INTO DCTitle (name) VALUES ('Detective Comics');
INSERT INTO DCTitle (name) VALUES ('Justice League of America');

INSERT INTO publisher_title (publisher_id, title_id) VALUES ((select id from Publisher where name = 'Marvel'), (select id from Title where name = 'The Amazing Spider-Man'));
INSERT INTO publisher_title (publisher_id, title_id) VALUES ((select id from Publisher where name = 'DC'), (select id from Title where name = 'Detective Comics'));
INSERT INTO publisher_title (publisher_id, title_id) VALUES ((select id from Publisher where name = 'DC'), (select id from Title where name = 'Justice League of America'));

INSERT INTO Volume (name) VALUES ('The Amazing Spider-Man Volume 1')
INSERT INTO Volume (name) VALUES ('The Amazing Spider-Man Volume 2')
INSERT INTO Volume (name) VALUES ('The Amazing Spider-Man Volume 3')
INSERT INTO Volume (name) VALUES ('Justice League of America Volume 1')
INSERT INTO Volume (name) VALUES ('Justice League of America Volume 2')

INSERT INTO title_volumes (title_id, volumes_id) VALUES ((select id from  Title where name = 'The Amazing Spider-Man'), (select id from Volume where name ='The Amazing Spider-Man Volume 1'));
INSERT INTO title_volumes (title_id, volumes_id) VALUES ((select id from  Title where name = 'The Amazing Spider-Man'), (select id from Volume where name ='The Amazing Spider-Man Volume 2'));
INSERT INTO title_volumes (title_id, volumes_id) VALUES ((select id from  Title where name = 'The Amazing Spider-Man'), (select id from Volume where name ='The Amazing Spider-Man Volume 3'));
INSERT INTO title_volumes (title_id, volumes_id) VALUES ((select id from  Title where name = 'Justice League of America'), (select id from Volume where name ='Justice League of America Volume 1'));
INSERT INTO title_volumes (title_id, volumes_id) VALUES ((select id from  Title where name = 'Justice League of America'), (select id from Volume where name ='Justice League of America Volume 2'));

INSERT INTO Issue (id, title, issue_number) VALUES (1, 'Spider-Man', 1)
INSERT INTO Issue (id, title, issue_number) VALUES (2, 'Duel to the Death With The Vulture', 2)
INSERT INTO Issue (id, title, issue_number) VALUES (3, 'Spider-Man Vs. Doctor Octopus', 3)
INSERT INTO Issue (id, title, issue_number) VALUES (4, 'Nothing Can Stop... The Sandman!', 4)
INSERT INTO Issue (id, title, issue_number) VALUES (5, 'Marked For Destruction by Dr. Doom!', 5)
INSERT INTO Issue (id, title, issue_number) VALUES (6, 'Face-To-Face With... The Lizard!', 6)
INSERT INTO Issue (id, title, issue_number) VALUES (7, 'The Return of The Vulture!', 7)
INSERT INTO Issue (id, title, issue_number) VALUES (8, 'The Terrible Threat of The Living Brain!', 8)
INSERT INTO Issue (id, title, issue_number) VALUES (9, 'The Man Called Electro!', 9)
INSERT INTO Issue (id, title, issue_number) VALUES (10, 'The Enforcers!', 10)
INSERT INTO Issue (id, title, issue_number) VALUES (11, 'The World of No Return', 1)
INSERT INTO Issue (id, title, issue_number) VALUES (12, 'Secret of the Sinister Sorcerors', 2)
INSERT INTO Issue (id, title, issue_number) VALUES (13, 'The Slave Ship of Space', 3)
INSERT INTO Issue (id, title, issue_number) VALUES (14, 'The Doom of The Star Diamond', 4)
INSERT INTO Issue (id, title, issue_number) VALUES (15, 'When Gravity Went Wild', 5)
INSERT INTO Issue (id, title, issue_number) VALUES (16, 'The Wheel Of Misfortune', 6)
INSERT INTO Issue (id, title, issue_number) VALUES (17, 'The Cosmic Fun-House', 7)
INSERT INTO Issue (id, title, issue_number) VALUES (18, 'For Sale -- The Justice League', 8)
INSERT INTO Issue (id, title, issue_number) VALUES (19, 'The Origin Of The Justice League', 9)
INSERT INTO Issue (id, title, issue_number) VALUES (20, 'The Fantastic Fingers Of Felix Faust', 10)


INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'The Amazing Spider-Man Volume 1'), (select id from Issue where title = 'Spider-Man'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'The Amazing Spider-Man Volume 1'), (select id from Issue where title = 'Duel to the Death With The Vulture'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'The Amazing Spider-Man Volume 1'), (select id from Issue where title = 'Spider-Man Vs. Doctor Octopus'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'The Amazing Spider-Man Volume 1'), (select id from Issue where title = 'Nothing Can Stop... The Sandman!'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'The Amazing Spider-Man Volume 1'), (select id from Issue where title = 'Marked For Destruction by Dr. Doom!'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'The Amazing Spider-Man Volume 1'), (select id from Issue where title = 'Face-To-Face With... The Lizard!'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'The Amazing Spider-Man Volume 1'), (select id from Issue where title = 'The Return of The Vulture!'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'The Amazing Spider-Man Volume 1'), (select id from Issue where title = 'The Terrible Threat of The Living Brain!'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'The Amazing Spider-Man Volume 1'), (select id from Issue where title = 'The Man Called Electro!'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'The Amazing Spider-Man Volume 1'), (select id from Issue where title = 'The Enforcers!'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'Justice League of America Volume 1'), (select id from Issue where title = 'The World of No Return'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'Justice League of America Volume 1'), (select id from Issue where title = 'Secret of the Sinister Sorcerors'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'Justice League of America Volume 1'), (select id from Issue where title = 'The Slave Ship of Space'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'Justice League of America Volume 1'), (select id from Issue where title = 'The Doom of The Star Diamond'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'Justice League of America Volume 1'), (select id from Issue where title = 'When Gravity Went Wild'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'Justice League of America Volume 1'), (select id from Issue where title = 'The Wheel Of Misfortune'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'Justice League of America Volume 1'), (select id from Issue where title = 'The Cosmic Fun-House'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'Justice League of America Volume 1'), (select id from Issue where title = 'For Sale -- The Justice League'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'Justice League of America Volume 1'), (select id from Issue where title = 'The Origin Of The Justice League'));
INSERT INTO volume_issues (volume_id, issues_id) VALUES ((select id from Volume where name = 'Justice League of America Volume 1'), (select id from Issue where title = 'The Fantastic Fingers Of Felix Faust'));

INSERT INTO title_volumes (title_id, volumes_id) VALUES ((select id from  Title where name = 'Justice League of America'), (select id from Volume where name ='Volume 1'));
INSERT INTO title_volumes (title_id, volumes_id) VALUES ((select id from  Title where name = 'Justice League of America'), (select id from Volume where name ='Volume 2'));


