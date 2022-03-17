-- Michael Yates (mjy5xy) and Justin Logan (jhl3mn)

-- Post(post_id, Datetime, text, votes, post_report, post_type) 
CREATE TABLE IF NOT EXISTS Post  ( -- [Post Table]
    post_id INT NOT NULL,
    post_time Datetime NOT NULL,
    post_text VARCHAR(99) NOT NULL,
    post_report INT NOT NULL,
    post_type VARCHAR(10) NOT NULL, -- text, poll, video, or picture
    PRIMARY KEY (post_id)
);

-- Comment(Post_id, comment_text) 
CREATE TABLE IF NOT EXISTS Comment ( -- [Comment Table]
    post_id INT NOT NULL,
    post_text VARCHAR(99) NOT NULL,
    PRIMARY KEY (post_id)
);

-- Text_Post(Post_id, color)
CREATE TABLE IF NOT EXISTS Text_Post ( -- [Text_Post Table]
    post_id INT NOT NULL,
    color VARCHAR(30) NOT NULL,
    PRIMARY KEY (post_id)
);

-- Images(Post_id, image)
CREATE TABLE IF NOT EXISTS Images ( -- [Images Table]
    post_id INT NOT NULL,
    color VARCHAR(30) NOT NULL,
    content varchar(1024),  -- store a reference to where the image is saved. 
    PRIMARY KEY (post_id)
);

-- Videos(Post_id, video)
CREATE TABLE IF NOT EXISTS Images ( -- [Images Table]
    post_id INT NOT NULL,
    content varchar(1024),  -- store a reference to where the video is saved. 
    PRIMARY KEY (post_id)
);



