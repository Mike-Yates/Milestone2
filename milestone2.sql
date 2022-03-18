-- Michael Yates (mjy5xy) and Justin Logan (jhl3mn)

-- Post(post_id, post_time, post_text, votes, post_report, post_type) 
CREATE TABLE IF NOT EXISTS Post  ( -- [Post Table]
    post_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    post_time Datetime NOT NULL,
    post_text VARCHAR(99) NOT NULL,
    votes int NOT NULL,
    post_report INT NOT NULL,
    post_type VARCHAR(10) NOT NULL, -- text, poll, video, or picture
    PRIMARY KEY (post_id)
);
INSERT INTO Post VALUES (1, 20220313184701, 'my name is mike, and this is my first post.', 3, 0, 'text');
INSERT INTO Post VALUES (2, 20220314184711, 'my name is mike, and this is my second post.', 4, 0, 'text');
INSERT INTO Post VALUES (3, 20220314184721, 'wow! i have 99 characters to work with', 0, 0,'text');
INSERT INTO Post VALUES (4, 20220314184751, 'some wierd characters are: !@#$%^&*(', 5, 0, 'text');

INSERT INTO Post VALUES (5, 20220315184722, 'my name is justin, check out this picture!!', 1, 1, 'picture');
INSERT INTO Post VALUES (6, 20220315184754, 'my name is justin, check out this second picture!!', 2, 0, 'picture');
INSERT INTO Post VALUES (7, 20220316184701, 'picture of my dog!!', 0, 0, 'picture');
INSERT INTO Post VALUES (8, 20220316184755, 'Heres another picture of Kunal!', 5, 0, 'picture');

INSERT INTO Post VALUES (9, 20220316184757, 'UVA Media is the Next Big Thing!! yes or no?', 70, 0, 'poll');
INSERT INTO Post VALUES (10, 20220317184710, 'Best soccer player?', 6, 0, 'poll');
INSERT INTO Post VALUES (11, 20220317184721, 'Best bastetball player in the East?', 1, 0, 'poll');
INSERT INTO Post VALUES (12, 20220317184730, 'favorite food?', 10, 0, 'poll');

INSERT INTO Post VALUES (13, 20220317184745, 'what do you think of this video', 3, 0, 'video');
INSERT INTO Post VALUES (14, 20220317184747, 'quick video of my cat!', 1, 0, 'video');
INSERT INTO Post VALUES (15, 20220317184749, 'me doing the rainbow remix', 0, 0, 'video');
INSERT INTO Post VALUES (16, 20220317184757, 'best goal ive scored!', 9, 0, 'video');

-- -80 = 35 seconds earlier 


-- Comment(comment_id, post_id, comment_time, comment_text) 
CREATE TABLE IF NOT EXISTS Comment ( -- [Comment Table]
    comment_id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
    post_id INT UNSIGNED NOT NULL,
    comment_time Datetime NOT NULL,
    comment_text VARCHAR(99) NOT NULL,
    PRIMARY KEY (comment_id)
);
INSERT INTO Comment VALUES (1, 0, 20220315184730, 'cool first post, mike!');
INSERT INTO Comment VALUES (2, 4, 20220315184745, 'justin, thats a cool picture!');
INSERT INTO Comment VALUES (3, 7, 20220316184720, 'kunal looks cool!');
INSERT INTO Comment VALUES (4, 5, 20220316184740, 'I liked the first picture mor than this one, justin');
INSERT INTO Comment VALUES (5, 5, 20220317184715, 'this one is still cool tho');
INSERT INTO Comment VALUES (6, 13, 20220317184730, 'funny cat video! good one!');


-- Text_Post(post_id, color)
CREATE TABLE IF NOT EXISTS Text_Post ( -- [Text_Post Table]
    post_id INT UNSIGNED NOT NULL,
    color VARCHAR(30) NOT NULL,
    PRIMARY KEY (post_id)
);
INSERT INTO Text_Post VALUES (1, 'blue');
INSERT INTO Text_Post VALUES (2, 'blue');
INSERT INTO Text_Post VALUES (3, 'red');
INSERT INTO Text_Post VALUES (4, 'green');


-- Images(post_id, content)
CREATE TABLE IF NOT EXISTS Images ( -- [Images Table]
    post_id INT UNSIGNED NOT NULL,
    content varchar(1024),  -- store a reference to where the image is saved. 
    PRIMARY KEY (post_id)
);
INSERT INTO Images VALUES (5, '/amazon/S3/bucken_name/picture_id4');
INSERT INTO Images VALUES (6, '/amazon/S3/bucken_name/picture_id5');
INSERT INTO Images VALUES (7, '/amazon/S3/bucken_name/picture_id6');
INSERT INTO Images VALUES (8, '/amazon/S3/bucken_name/picture_id7');


-- Videos(post_id, content)
CREATE TABLE IF NOT EXISTS Videos ( -- [Images Table]
    post_id INT UNSIGNED NOT NULL,
    content varchar(1024),  -- store a reference to where the video is saved. 
    PRIMARY KEY (post_id)
);
INSERT INTO Videos VALUES (13, '/amazon/S3/bucken_name/videoid12');
INSERT INTO Videos VALUES (14, '/amazon/S3/bucken_name/videoid12');
INSERT INTO Videos VALUES (15, '/amazon/S3/bucken_name/videoid12');
INSERT INTO Videos VALUES (16, '/amazon/S3/bucken_name/videoid12');


-- Poll_Post(post_id, num_options)
CREATE TABLE IF NOT EXISTS Poll_Post  ( -- [Poll_Post Table]
    post_id INT UNSIGNED NOT NULL,
    num_options INT NOT NULL,
    PRIMARY KEY (post_id)
);

INSERT INTO Poll_Post VALUES (9, 2);
INSERT INTO Poll_Post VALUES (10, 4);
INSERT INTO Poll_Post VALUES (11, 4);
INSERT INTO Poll_Post VALUES (12, 3);

-- poll_options(Post_id, option_id, option_name, vote_count)
CREATE TABLE IF NOT EXISTS Poll_Options  ( -- [Poll_Options Table]
    post_id INT UNSIGNED NOT NULL,
    option_id INT NOT NULL,
    option_name VARCHAR(30) NOT NULL,
    vote_count INT NOT NULL,
    PRIMARY KEY (post_id, option_id)
);

-- UVA Media is the Next Big Thing!! yes or no?
INSERT INTO Poll_Options VALUES (9, 0, 'yes', 0);
INSERT INTO Poll_Options VALUES (9, 1, 'no', 0);
-- Best soccer player?
INSERT INTO Poll_Options VALUES (10, 0, 'Messi', 0);
INSERT INTO Poll_Options VALUES (10, 1, 'Ronaldo', 0);
INSERT INTO Poll_Options VALUES (10, 2, 'Maguire', 0);
INSERT INTO Poll_Options VALUES (10, 3, 'Mbappe', 0);
-- Best bastetball player in the East?
INSERT INTO Poll_Options VALUES (11, 0, 'Tatum', 0);
INSERT INTO Poll_Options VALUES (11, 1, 'Embiid', 0);
INSERT INTO Poll_Options VALUES (11, 2, 'Antetokounmpo', 0);
INSERT INTO Poll_Options VALUES (11, 3, 'Durant', 0);
-- favorite food?
INSERT INTO Poll_Options VALUES (12, 0, 'Tacos', 0);
INSERT INTO Poll_Options VALUES (12, 1, 'Pizza', 0);
INSERT INTO Poll_Options VALUES (12, 2, 'Ice Cream', 0);

-- ActiveUser(ActivePhoneNumber, points)
CREATE TABLE IF NOT EXISTS Active_User  ( -- [Active_User Table]
    phone_number BIGINT NOT NULL,
    points INT NOT NULL,
    reports INT NOT NULL,
    PRIMARY KEY (phone_number)
);

INSERT INTO Active_User VALUES (5715550101, 10, 0);
INSERT INTO Active_User VALUES (7035550202, 12, 0);
INSERT INTO Active_User VALUES (2035550303, 3, 0);
INSERT INTO Active_User VALUES (5715550404, 22, 1);


-- BannedUser(BannedPhoneNumber, Reason)
CREATE TABLE IF NOT EXISTS Banned_User  ( -- [Banned_User Table]
    phone_number BIGINT NOT NULL,
    reason VARCHAR(99) NOT NULL,
    reports INT NOT NULL,
    PRIMARY KEY (phone_number)
);

INSERT INTO Banned_User VALUES (2035550505, "profanity", 3);
INSERT INTO Banned_User VALUES (7035550606, "not cool enough", 3);

-- SuspendedUser(BannedPhoneNumber, Reason, sus_time, reports) 
CREATE TABLE IF NOT EXISTS Suspended_User  ( -- [Suspended_User Table]
    phone_number BIGINT NOT NULL,
    reason VARCHAR(99) NOT NULL,
    sus_time INT NOT NULL, -- in seconds
    reports INT NOT NULL,
    PRIMARY KEY (phone_number)
);

INSERT INTO Suspended_User VALUES (4345550707, "inapropriate", 604800, 2);
INSERT INTO Suspended_User VALUES (5715550808, "illegal", 1209600, 2);

-- Admin_User(AdminPhoneNumber, username, reports) 
CREATE TABLE IF NOT EXISTS Admin_User  ( -- [Admin_User Table]
    phone_number BIGINT NOT NULL,
    username VARCHAR(30) NOT NULL,
    reports INT NOT NULL,
    PRIMARY KEY (phone_number)
);

INSERT INTO Admin_User VALUES (5715550909, "Justin_Is_Cool", 0);
INSERT INTO Admin_User VALUES (7035551010, "MikeCR7", 0);

-- Post_Creator(post_id, phone_number)
CREATE TABLE IF NOT EXISTS Post_Creator  ( -- [Post_Creator Table]
    phone_number BIGINT NOT NULL,
    post_id int UNSIGNED NOT NULL, 
    PRIMARY KEY (post_id)
);

INSERT INTO Post_Creator VALUES (5715550101, 1);
INSERT INTO Post_Creator VALUES (5715550101, 2);
INSERT INTO Post_Creator VALUES (2035550303, 3);
INSERT INTO Post_Creator VALUES (5715550404, 4);
INSERT INTO Post_Creator VALUES (7035550202, 5);
INSERT INTO Post_Creator VALUES (7035550202, 6);
INSERT INTO Post_Creator VALUES (2035550303, 7);
INSERT INTO Post_Creator VALUES (5715550404, 8);
INSERT INTO Post_Creator VALUES (5715550101, 9);
INSERT INTO Post_Creator VALUES (7035550202, 10);
INSERT INTO Post_Creator VALUES (2035550303, 11);
INSERT INTO Post_Creator VALUES (5715550404, 12);
INSERT INTO Post_Creator VALUES (2035550303, 13);
INSERT INTO Post_Creator VALUES (5715550404, 14);
INSERT INTO Post_Creator VALUES (2035550303, 15);
INSERT INTO Post_Creator VALUES (5715550404, 16);


CREATE TABLE IF NOT EXISTS Comment_Creator  ( -- [Comment_Creator Table]
    phone_number BIGINT NOT NULL,
    comment_id int UNSIGNED NOT NULL, 
    PRIMARY KEY (comment_id)
);

INSERT INTO Comment_Creator VALUES (5715550101, 1);
INSERT INTO Comment_Creator VALUES (5715550101, 2);
INSERT INTO Comment_Creator VALUES (2035550303, 3);
INSERT INTO Comment_Creator VALUES (2035550303, 4);
INSERT INTO Comment_Creator VALUES (7035550202, 5);
INSERT INTO Comment_Creator VALUES (7035550202, 6);
