-- Michael Yates (mjy5xy) and Justin Logan (jhl3mn)

--Poll_Post(Post_id, num_options)
CREATE TABLE IF NOT EXISTS Poll_Post  ( -- [Poll_Post Table]
    post_id INT NOT NULL,
    num_options INT NOT NULL,
    PRIMARY KEY (post_id)
);
--poll_options(Post_id, option_id, option_name, vote_count)
CREATE TABLE IF NOT EXISTS Poll_Options  ( -- [Poll_Options Table]
    post_id INT NOT NULL,
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