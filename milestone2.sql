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

INSERT INTO Post VALUES (17, 20220313184702, 'love this app', 3, 0, 'text');
INSERT INTO Post VALUES (18, 20220314184722, 'Im so cool', 5, 0, 'text');
INSERT INTO Post VALUES (19, 20220314184725, 'lalalalala', 0, 0,'text');
INSERT INTO Post VALUES (20, 20220314184757, 'go hoos!!!!!', 2, 0, 'text');

INSERT INTO Post VALUES (21, 20220315184722, 'its me!!', 3, 1, 'picture');
INSERT INTO Post VALUES (22, 20220315184759, 'love my family', 4, 0, 'picture');
INSERT INTO Post VALUES (23, 20220316184703, 'went to the beach!!', 1, 0, 'picture');
INSERT INTO Post VALUES (24, 20220316184754, 'We had so much fun!', 2, 0, 'picture');

INSERT INTO Post VALUES (25, 20220316184756, 'Whats your favorite color?', 5, 0, 'poll');
INSERT INTO Post VALUES (26, 20220317184756, 'Do people like me? (yes/yes)', 10, 0, 'poll');
INSERT INTO Post VALUES (27, 20220317184725, 'Whats better, chocolate or vanilla?', 4, 0, 'poll');
INSERT INTO Post VALUES (28, 20220317184732, 'Do you watch sports?', 10, 0, 'poll');

INSERT INTO Post VALUES (29, 20220317184748, 'GO HOOS!!!!', 2, 0, 'video');
INSERT INTO Post VALUES (30, 20220317184745, 'New song i just wrote!', 3, 0, 'video');
INSERT INTO Post VALUES (31, 20220317184741, 'New trickshot:)', 10, 0, 'video');
INSERT INTO Post VALUES (32, 20220317184751, 'My dog is so funny', 2, 0, 'video');

-- -80 = 35 seconds earlier 


-- Comment(comment_id, post_id, comment_time, comment_text, votes) 
CREATE TABLE IF NOT EXISTS Comment ( -- [Comment Table]
    comment_id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
    post_id INT UNSIGNED NOT NULL,
    comment_time Datetime NOT NULL,
    comment_text VARCHAR(99) NOT NULL,
    votes int NOT NULL,
    PRIMARY KEY (comment_id)
);
INSERT INTO Comment VALUES (1, 0, 20220315184730, 'cool first post, mike!', 3);
INSERT INTO Comment VALUES (2, 4, 20220315184745, 'justin, thats a cool picture!', 4);
INSERT INTO Comment VALUES (3, 7, 20220316184720, 'kunal looks cool!', 1);
INSERT INTO Comment VALUES (4, 5, 20220316184740, 'I liked the first picture mor than this one, justin', 0);
INSERT INTO Comment VALUES (5, 5, 20220317184715, 'this one is still cool tho', 2);
INSERT INTO Comment VALUES (6, 13, 20220317184730, 'funny cat video! good one!', 5);
INSERT INTO Comment VALUES (7, 17, 20220315184740, 'me too!!!', 10);
INSERT INTO Comment VALUES (8, 18, 20220315184733, 'no youre not haha', 9);
INSERT INTO Comment VALUES (9, 22, 20220316184444, 'such a good picture', 5);
INSERT INTO Comment VALUES (10, 25, 20220316184555, 'Brown!!', 1);
INSERT INTO Comment VALUES (11, 25, 20220317184555, 'Black is mine', 4);
INSERT INTO Comment VALUES (12, 31, 20220317184744, 'Wow, well done', 2);


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
INSERT INTO Text_Post VALUES (17, 'yellow');
INSERT INTO Text_Post VALUES (18, 'black');
INSERT INTO Text_Post VALUES (19, 'black');
INSERT INTO Text_Post VALUES (20, 'green');


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
INSERT INTO Images VALUES (21, '/amazon/S3/bucken_name/picture_id21');
INSERT INTO Images VALUES (22, '/amazon/S3/bucken_name/picture_id22');
INSERT INTO Images VALUES (23, '/amazon/S3/bucken_name/picture_id23');
INSERT INTO Images VALUES (24, '/amazon/S3/bucken_name/picture_id24');


-- Videos(post_id, content)
CREATE TABLE IF NOT EXISTS Videos ( -- [Images Table]
    post_id INT UNSIGNED NOT NULL,
    content varchar(1024),  -- store a reference to where the video is saved. 
    PRIMARY KEY (post_id)
);
INSERT INTO Videos VALUES (13, '/amazon/S3/bucken_name/videoid13');
INSERT INTO Videos VALUES (14, '/amazon/S3/bucken_name/videoid14');
INSERT INTO Videos VALUES (15, '/amazon/S3/bucken_name/videoid15');
INSERT INTO Videos VALUES (16, '/amazon/S3/bucken_name/videoid16');
INSERT INTO Videos VALUES (29, '/amazon/S3/bucken_name/videoid29');
INSERT INTO Videos VALUES (30, '/amazon/S3/bucken_name/videoid30');
INSERT INTO Videos VALUES (31, '/amazon/S3/bucken_name/videoid31');
INSERT INTO Videos VALUES (32, '/amazon/S3/bucken_name/videoid32');


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
INSERT INTO Poll_Post VALUES (25, 7);
INSERT INTO Poll_Post VALUES (26, 2);
INSERT INTO Poll_Post VALUES (27, 2);
INSERT INTO Poll_Post VALUES (28, 3);

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
-- favorite color?
INSERT INTO Poll_Options VALUES (25, 0, 'Red', 0);
INSERT INTO Poll_Options VALUES (25, 1, 'Orange', 0);
INSERT INTO Poll_Options VALUES (25, 2, 'Yellow', 0);
INSERT INTO Poll_Options VALUES (25, 3, 'Green', 0);
INSERT INTO Poll_Options VALUES (25, 4, 'Blue', 0);
INSERT INTO Poll_Options VALUES (25, 5, 'Purple', 0);
INSERT INTO Poll_Options VALUES (25, 6, 'Other', 0);
-- Do people like me?
INSERT INTO Poll_Options VALUES (26, 0, 'yes', 0);
INSERT INTO Poll_Options VALUES (26, 1, 'Yes!!!', 0);
-- Chocolate or Vanilla?
INSERT INTO Poll_Options VALUES (27, 0, 'chocolate', 0);
INSERT INTO Poll_Options VALUES (27, 1, 'vanilla', 0);
-- Do you watch sports?
INSERT INTO Poll_Options VALUES (28, 0, 'yes', 0);
INSERT INTO Poll_Options VALUES (28, 1, 'no', 0);
INSERT INTO Poll_Options VALUES (28, 2, 'sometimes', 0);

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
INSERT INTO Active_User VALUES (5715550404, 22, 2);
INSERT INTO Active_User VALUES (5715550999, 1, 0);
INSERT INTO Active_User VALUES (7035550998, 0, 0);
INSERT INTO Active_User VALUES (2035550997, 40, 1);
INSERT INTO Active_User VALUES (5715550996, 13, 0);
INSERT INTO Active_User VALUES (5715550995, 5, 0);
INSERT INTO Active_User VALUES (7035550994, 0, 0);
INSERT INTO Active_User VALUES (2035550992, 3, 0);
INSERT INTO Active_User VALUES (5715550992, 16, 0);
INSERT INTO Active_User VALUES (7035550555, 0, 0);
INSERT INTO Active_User VALUES (7035550554, 0, 0);
INSERT INTO Active_User VALUES (7035550553, 0, 0);
INSERT INTO Active_User VALUES (7035550552, 0, 0);
INSERT INTO Active_User VALUES (7035550551, 0, 0);
INSERT INTO Active_User VALUES (7035550550, 0, 0);
INSERT INTO Active_User VALUES (7035550549, 0, 0);
INSERT INTO Active_User VALUES (7035550548, 0, 0);
INSERT INTO Active_User VALUES (7035550547, 0, 0);
INSERT INTO Active_User VALUES (7035550546, 0, 0);
INSERT INTO Active_User VALUES (7035550545, 0, 0);
INSERT INTO Active_User VALUES (7035550544, 0, 0);
INSERT INTO Active_User VALUES (7035550543, 0, 0);
INSERT INTO Active_User VALUES (7035550542, 0, 0);
INSERT INTO Active_User VALUES (7035550541, 0, 0);
INSERT INTO Active_User VALUES (7035550540, 0, 0);
INSERT INTO Active_User VALUES (7035550539, 0, 0);
INSERT INTO Active_User VALUES (7035550538, 0, 0);


-- BannedUser(BannedPhoneNumber, Reason)
CREATE TABLE IF NOT EXISTS Banned_User  ( -- [Banned_User Table]
    phone_number BIGINT NOT NULL,
    reason VARCHAR(99) NOT NULL,
    reports INT NOT NULL,
    PRIMARY KEY (phone_number)
);

INSERT INTO Banned_User VALUES (2035550505, "profanity", 3);
INSERT INTO Banned_User VALUES (7035550606, "illegal", 3);
INSERT INTO Banned_User VALUES (2035550888, "profanity", 3);
INSERT INTO Banned_User VALUES (7035550887, "repeated offenses", 3);
INSERT INTO Banned_User VALUES (2035550886, "inapropriate", 3);
INSERT INTO Banned_User VALUES (7035550885, "repeated offenses", 3);
INSERT INTO Banned_User VALUES (2035550884, "inapropriate", 3);
INSERT INTO Banned_User VALUES (7035550883, "repeated offenses", 3);
INSERT INTO Banned_User VALUES (7035550882, "illegal", 3);
INSERT INTO Banned_User VALUES (2035550881, "profanity", 3);

-- SuspendedUser(BannedPhoneNumber, Reason, sus_time, reports) 
CREATE TABLE IF NOT EXISTS Suspended_User  ( -- [Suspended_User Table]
    phone_number BIGINT NOT NULL,
    reason VARCHAR(99) NOT NULL,
    sus_time INT NOT NULL, -- in seconds
    reports INT NOT NULL,
    PRIMARY KEY (phone_number)
);

INSERT INTO Suspended_User VALUES (4345550707, "inapropriate", 604800, 2);
INSERT INTO Suspended_User VALUES (5715550808, "profanity", 1209600, 2);
INSERT INTO Suspended_User VALUES (4345550777, "misuse", 604800, 2);
INSERT INTO Suspended_User VALUES (5715550776, "miuse", 1209600, 2);
INSERT INTO Suspended_User VALUES (4345550775, "profanity", 604800, 2);
INSERT INTO Suspended_User VALUES (5715550774, "profanity", 1209600, 2);

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
    post_id int UNSIGNED NOT NULL, 
    phone_number BIGINT NOT NULL,
    PRIMARY KEY (post_id)
);

INSERT INTO Post_Creator VALUES (1, 5715550101);
INSERT INTO Post_Creator VALUES (2, 5715550101);
INSERT INTO Post_Creator VALUES (3, 2035550303);
INSERT INTO Post_Creator VALUES (4, 5715550404);
INSERT INTO Post_Creator VALUES (5, 7035550202);
INSERT INTO Post_Creator VALUES (6, 7035550202);
INSERT INTO Post_Creator VALUES (7, 2035550303);
INSERT INTO Post_Creator VALUES (8, 5715550404);
INSERT INTO Post_Creator VALUES (9, 5715550101);
INSERT INTO Post_Creator VALUES (10, 7035550202);
INSERT INTO Post_Creator VALUES (11, 2035550303);
INSERT INTO Post_Creator VALUES (12, 5715550404);
INSERT INTO Post_Creator VALUES (13, 2035550303);
INSERT INTO Post_Creator VALUES (14, 5715550404);
INSERT INTO Post_Creator VALUES (15, 2035550303);
INSERT INTO Post_Creator VALUES (16, 5715550404);
INSERT INTO Post_Creator VALUES (17, 2035550997);
INSERT INTO Post_Creator VALUES (18, 2035550997);
INSERT INTO Post_Creator VALUES (19, 2035550997);
INSERT INTO Post_Creator VALUES (20, 5715550999);
INSERT INTO Post_Creator VALUES (21, 5715550996);
INSERT INTO Post_Creator VALUES (22, 5715550996);
INSERT INTO Post_Creator VALUES (23, 2035550997);
INSERT INTO Post_Creator VALUES (24, 5715550995);
INSERT INTO Post_Creator VALUES (25, 2035550992);
INSERT INTO Post_Creator VALUES (26, 5715550992);
INSERT INTO Post_Creator VALUES (27, 2035550303);
INSERT INTO Post_Creator VALUES (28, 5715550404);
INSERT INTO Post_Creator VALUES (29, 2035550303);
INSERT INTO Post_Creator VALUES (30, 5715550404);
INSERT INTO Post_Creator VALUES (31, 2035550992);
INSERT INTO Post_Creator VALUES (32, 5715550995);


CREATE TABLE IF NOT EXISTS Comment_Creator  ( -- [Comment_Creator Table]
    comment_id int UNSIGNED NOT NULL,
    phone_number BIGINT NOT NULL, 
    PRIMARY KEY (comment_id)
);

INSERT INTO Comment_Creator VALUES (1, 5715550101);
INSERT INTO Comment_Creator VALUES (2, 5715550101);
INSERT INTO Comment_Creator VALUES (3, 2035550303);
INSERT INTO Comment_Creator VALUES (4, 2035550303);
INSERT INTO Comment_Creator VALUES (5, 7035550202);
INSERT INTO Comment_Creator VALUES (6, 7035550202);
INSERT INTO Comment_Creator VALUES (7, 5715550999);
INSERT INTO Comment_Creator VALUES (8, 5715550992);
INSERT INTO Comment_Creator VALUES (9, 5715550995);
INSERT INTO Comment_Creator VALUES (10, 2035550997);
INSERT INTO Comment_Creator VALUES (11, 5715550999);
INSERT INTO Comment_Creator VALUES (12, 7035550202);
