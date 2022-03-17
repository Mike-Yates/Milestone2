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
INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 5, 'my name is mike, and this is my first post.', 0, 'text');
INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 10, 'my name is mike, and this is my second post.', 0, 'text');
INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 15, 'wow! i have 99 characters to work with', 0, 'text');
INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 20, 'some wierd characters are: !@#$%^&*(', 0, 'text');

INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 25, 'my name is justin, check out this picture!!', 0, 'picture');
INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 30, 'my name is justin, check out this second picture!!', 0, 'picture');
INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 35, 'picture of my dog!!', 0, 'picture');
INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 40, 'Heres another picture of Kunal!', 0, 'picture');

INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 45, 'UVA Media is the Next Big Thing!! yes or no?', 0, 'poll');
INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 50, 'Best soccer player?', 0, 'poll');
INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 55, 'Best bastetball player in the East?', 0, 'poll');
INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 60, 'favorite food?', 0, 'poll');

INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 65, 'what do you think of this video', 0, 'video');
INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 70, 'quick video of my cat!', 0, 'video');
INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 75, 'me doing the rainbow remix', 0, 'video');
INSERT INTO Post VALUES (NULL, CURRENT_TIMESTAMP - 80, 'best goal ive scored!', 0, 'video');



-- Comment(Post_id, comment_text) 
CREATE TABLE IF NOT EXISTS Comment ( -- [Comment Table]
    post_id INT UNSIGNED NOT NULL,
    post_text VARCHAR(99) NOT NULL,
    PRIMARY KEY (post_id)
);


-- Text_Post(Post_id, color)
CREATE TABLE IF NOT EXISTS Text_Post ( -- [Text_Post Table]
    post_id INT UNSIGNED NOT NULL,
    color VARCHAR(30) NOT NULL,
    PRIMARY KEY (post_id)
);

-- Images(Post_id, image)
CREATE TABLE IF NOT EXISTS Images ( -- [Images Table]
    post_id INT UNSIGNED NOT NULL,
    content varchar(1024),  -- store a reference to where the image is saved. 
    PRIMARY KEY (post_id)
);

-- Videos(Post_id, video)
CREATE TABLE IF NOT EXISTS Videos ( -- [Images Table]
    post_id INT UNSIGNED NOT NULL,
    content varchar(1024),  -- store a reference to where the video is saved. 
    PRIMARY KEY (post_id)
);

--Poll_Post(Post_id, num_options)
CREATE TABLE IF NOT EXISTS Poll_Post  ( -- [Poll_Post Table]
    post_id INT UNSIGNED NOT NULL,
    num_options INT NOT NULL,
    PRIMARY KEY (post_id)
);
--poll_options(Post_id, option_id, option_name, vote_count)
CREATE TABLE IF NOT EXISTS Poll_Options  ( -- [Poll_Options Table]
    post_id INT UNSIGNED NOT NULL,
    option_id INT NOT NULL,
    option_name VARCHAR(30) NOT NULL,
    vote_count INT NOT NULL,
    PRIMARY KEY (post_id, option_id)
);
--ActiveUser(ActivePhoneNumber, points)
CREATE TABLE IF NOT EXISTS Active_User  ( -- [Active_User Table]
    phone_number BIGINT NOT NULL,
    points INT NOT NULL,
    PRIMARY KEY (phone_number)
);
--BannedUser(BannedPhoneNumber, Reason)
CREATE TABLE IF NOT EXISTS Banned_User  ( -- [Banned_User Table]
    phone_number BIGINT NOT NULL,
    reason VARCHAR(99) NOT NULL,
    PRIMARY KEY (phone_number)
);
--SuspendedUser(BannedPhoneNumber, Reason) 
CREATE TABLE IF NOT EXISTS Suspended_User  ( -- [Suspended_User Table]
    phone_number BIGINT NOT NULL,
    reason VARCHAR(99) NOT NULL,
    sus_time INT NOT NULL, --in seconds
    PRIMARY KEY (phone_number)
);
--AdminUser(AdminPhoneNumber, username) 
CREATE TABLE IF NOT EXISTS Admin_User  ( -- [Admin_User Table]
    phone_number BIGINT NOT NULL,
    username VARCHAR(30) NOT NULL,
    PRIMARY KEY (phone_number)
);

-- PostCreator(post_id, phone_num)
CREATE TABLE IF NOT EXISTS Post_Creator  ( -- [Post_Creator Table]
    phone_number BIGINT NOT NULL,
    post_id int UNSIGNED NOT NULL, 
    PRIMARY KEY (post_id)
);

