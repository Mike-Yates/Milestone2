-- Michael Yates (mjy5xy) and Justin Logan (jhl3mn)
-- Post(post_id, Datetime, text, votes, post_report, post_type) 

CREATE TABLE IF NOT EXISTS Post  ( -- [Post Table]
    post_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    post_time Datetime NOT NULL,
    post_text VARCHAR(99) NOT NULL,
    post_report INT NOT NULL,
    post_type VARCHAR(10) NOT NULL, -- text, poll, video, or picture
    PRIMARY KEY (post_id)
);
INSERT INTO Post VALUES (0, CURRENT_TIMESTAMP - 5, 'my name is mike, and this is my first post.', 0, 'text');
INSERT INTO Post VALUES (1, CURRENT_TIMESTAMP - 10, 'my name is mike, and this is my second post.', 0, 'text');
INSERT INTO Post VALUES (2, CURRENT_TIMESTAMP - 15, 'wow! i have 99 characters to work with', 0, 'text');
INSERT INTO Post VALUES (3, CURRENT_TIMESTAMP - 20, 'some wierd characters are: !@#$%^&*(', 0, 'text');

INSERT INTO Post VALUES (4, CURRENT_TIMESTAMP - 25, 'my name is justin, check out this picture!!', 0, 'picture');
INSERT INTO Post VALUES (5, CURRENT_TIMESTAMP - 30, 'my name is justin, check out this second picture!!', 0, 'picture');
INSERT INTO Post VALUES (6, CURRENT_TIMESTAMP - 35, 'picture of my dog!!', 0, 'picture');
INSERT INTO Post VALUES (7, CURRENT_TIMESTAMP - 40, 'Heres another picture of Kunal!', 0, 'picture');

INSERT INTO Post VALUES (8, CURRENT_TIMESTAMP - 45, 'UVA Media is the Next Big Thing!! yes or no?', 0, 'poll');
INSERT INTO Post VALUES (9, CURRENT_TIMESTAMP - 50, 'Best soccer player?', 0, 'poll');
INSERT INTO Post VALUES (10, CURRENT_TIMESTAMP - 55, 'Best bastetball player in the East?', 0, 'poll');
INSERT INTO Post VALUES (11, CURRENT_TIMESTAMP - 60, 'favorite food?', 0, 'poll');

INSERT INTO Post VALUES (12, CURRENT_TIMESTAMP - 65, 'what do you think of this video', 0, 'video');
INSERT INTO Post VALUES (13, CURRENT_TIMESTAMP - 70, 'quick video of my cat!', 0, 'video');
INSERT INTO Post VALUES (14, CURRENT_TIMESTAMP - 75, 'me doing the rainbow remix', 0, 'video');
INSERT INTO Post VALUES (15, CURRENT_TIMESTAMP - 80, 'best goal ive scored!', 0, 'video');



-- Comment(post_id, comment_id, comment_text) 
CREATE TABLE IF NOT EXISTS Comment ( -- [Comment Table]
    comment_id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
    post_id INT UNSIGNED NOT NULL,
    comment_time Datetime NOT NULL,
    comment_text VARCHAR(99) NOT NULL,
    PRIMARY KEY (comment_id)
);
INSERT INTO Comment VALUES (0, 0, CURRENT_TIMESTAMP - 65, 'cool first post, mike!', 0, 'video');
INSERT INTO Comment VALUES (1, 4, CURRENT_TIMESTAMP - 65, 'justin, thats a cool picture!', 0, 'video');
INSERT INTO Comment VALUES (2, 7, CURRENT_TIMESTAMP - 65, 'kunal looks cool!', 0, 'video');
INSERT INTO Comment VALUES (3, 5, CURRENT_TIMESTAMP - 65, 'I liked the first picture mor than this one, justin', 0, 'video');
INSERT INTO Comment VALUES (4, 5, CURRENT_TIMESTAMP - 65, 'this one is still cool tho', 0, 'video');
INSERT INTO Comment VALUES (5, 13, CURRENT_TIMESTAMP - 65, 'funny cat video! good one!', 0, 'video');


-- Text_Post(Post_id, color)
CREATE TABLE IF NOT EXISTS Text_Post ( -- [Text_Post Table]
    post_id INT UNSIGNED NOT NULL,
    color VARCHAR(30) NOT NULL,
    PRIMARY KEY (post_id)
);
INSERT INTO Text_Post VALUES (0, 'blue');
INSERT INTO Text_Post VALUES (1, 'blue');
INSERT INTO Text_Post VALUES (2, 'red');
INSERT INTO Text_Post VALUES (3, 'green');


-- Images(Post_id, image)
CREATE TABLE IF NOT EXISTS Images ( -- [Images Table]
    post_id INT UNSIGNED NOT NULL,
    content varchar(1024),  -- store a reference to where the image is saved. 
    PRIMARY KEY (post_id)
);
INSERT INTO Images VALUES (4, '/amazon/S3/bucken_name/picture_id4');
INSERT INTO Images VALUES (5, '/amazon/S3/bucken_name/picture_id5');
INSERT INTO Images VALUES (6, '/amazon/S3/bucken_name/picture_id6');
INSERT INTO Images VALUES (7, '/amazon/S3/bucken_name/picture_id7');


-- Videos(Post_id, video)
CREATE TABLE IF NOT EXISTS Videos ( -- [Images Table]
    post_id INT UNSIGNED NOT NULL,
    content varchar(1024),  -- store a reference to where the video is saved. 
    PRIMARY KEY (post_id)
);
INSERT INTO Videos VALUES (12, '/amazon/S3/bucken_name/videoid12');
INSERT INTO Videos VALUES (13, '/amazon/S3/bucken_name/videoid12');
INSERT INTO Videos VALUES (14, '/amazon/S3/bucken_name/videoid12');
INSERT INTO Videos VALUES (15, '/amazon/S3/bucken_name/videoid12');


--Poll_Post(Post_id, num_options)
CREATE TABLE IF NOT EXISTS Poll_Post  ( -- [Poll_Post Table]
    post_id INT UNSIGNED NOT NULL,
    num_options INT NOT NULL,
    PRIMARY KEY (post_id)
);

INSERT INTO Poll_Post VALUES (8, 2);
INSERT INTO Poll_Post VALUES (9, 4);
INSERT INTO Poll_Post VALUES (10, 4);
INSERT INTO Poll_Post VALUES (11, 3);

--poll_options(Post_id, option_id, option_name, vote_count)
CREATE TABLE IF NOT EXISTS Poll_Options  ( -- [Poll_Options Table]
    post_id INT UNSIGNED NOT NULL,
    option_id INT NOT NULL,
    option_name VARCHAR(30) NOT NULL,
    vote_count INT NOT NULL,
    PRIMARY KEY (post_id, option_id)
);

--'UVA Media is the Next Big Thing!! yes or no?
INSERT INTO Poll_Options VALUES (8, 0, 'yes', 0);
INSERT INTO Poll_Options VALUES (8, 1, 'no', 0);
--'Best soccer player?'
INSERT INTO Poll_Options VALUES (9, 0, 'Messi', 0);
INSERT INTO Poll_Options VALUES (9, 1, 'Ronaldo', 0);
INSERT INTO Poll_Options VALUES (9, 2, 'Maguire', 0);
INSERT INTO Poll_Options VALUES (9, 3, 'Mbappe', 0);
--'Best bastetball player in the East?
INSERT INTO Poll_Options VALUES (10, 0, 'Tatum', 0);
INSERT INTO Poll_Options VALUES (10, 1, 'Embiid', 0);
INSERT INTO Poll_Options VALUES (10, 2, 'Antetokounmpo', 0);
INSERT INTO Poll_Options VALUES (10, 3, 'Durant', 0);
--favorite food?
INSERT INTO Poll_Options VALUES (11, 0, 'Tacos', 0);
INSERT INTO Poll_Options VALUES (11, 1, 'Pizza', 0);
INSERT INTO Poll_Options VALUES (11, 2, 'Ice Cream', 0);

--ActiveUser(ActivePhoneNumber, points)
CREATE TABLE IF NOT EXISTS Active_User  ( -- [Active_User Table]
    phone_number BIGINT NOT NULL,
    points INT NOT NULL,
    PRIMARY KEY (phone_number)
);

INSERT INTO Active_User VALUES (5715550101, 10);
INSERT INTO Active_User VALUES (7035550202, 12);
INSERT INTO Active_User VALUES (2035550303, 3);
INSERT INTO Active_User VALUES (5715550404, 22);


--BannedUser(BannedPhoneNumber, Reason)
CREATE TABLE IF NOT EXISTS Banned_User  ( -- [Banned_User Table]
    phone_number BIGINT NOT NULL,
    reason VARCHAR(99) NOT NULL,
    PRIMARY KEY (phone_number)
);

INSERT INTO Banned_User VALUES (2035550505, "profanity");
INSERT INTO Banned_User VALUES (7035550606, "not cool enough");

--SuspendedUser(BannedPhoneNumber, Reason) 
CREATE TABLE IF NOT EXISTS Suspended_User  ( -- [Suspended_User Table]
    phone_number BIGINT NOT NULL,
    reason VARCHAR(99) NOT NULL,
    sus_time INT NOT NULL, --in seconds
    PRIMARY KEY (phone_number)
);

INSERT INTO Suspended_User VALUES (4345550707, "inapropriate", 604800);
INSERT INTO Suspended_User VALUES (5715550808, "illegal", 1209600);

--AdminUser(AdminPhoneNumber, username) 
CREATE TABLE IF NOT EXISTS Admin_User  ( -- [Admin_User Table]
    phone_number BIGINT NOT NULL,
    username VARCHAR(30) NOT NULL,
    PRIMARY KEY (phone_number)
);

INSERT INTO Admin_User VALUES (5715550909, "Justin_Is_Cool");
INSERT INTO Admin_User VALUES (7035551010, "MikeCR7");

-- PostCreator(post_id, phone_num)
CREATE TABLE IF NOT EXISTS Post_Creator  ( -- [Post_Creator Table]
    phone_number BIGINT NOT NULL,
    post_id int UNSIGNED NOT NULL, 
    PRIMARY KEY (post_id)
);

INSERT INTO Post_Creator VALUES (5715550101, 0);
INSERT INTO Post_Creator VALUES (7035550202, 1);
INSERT INTO Post_Creator VALUES (2035550303, 2);
INSERT INTO Post_Creator VALUES (5715550404, 3);
INSERT INTO Post_Creator VALUES (5715550101, 4);
INSERT INTO Post_Creator VALUES (7035550202, 5);
INSERT INTO Post_Creator VALUES (2035550303, 6);
INSERT INTO Post_Creator VALUES (5715550404, 7);
INSERT INTO Post_Creator VALUES (5715550101, 8);
INSERT INTO Post_Creator VALUES (7035550202, 9);
INSERT INTO Post_Creator VALUES (2035550303, 10);
INSERT INTO Post_Creator VALUES (5715550404, 11);
INSERT INTO Post_Creator VALUES (2035550303, 12);
INSERT INTO Post_Creator VALUES (5715550404, 13);
INSERT INTO Post_Creator VALUES (2035550303, 14);
INSERT INTO Post_Creator VALUES (5715550404, 15);
