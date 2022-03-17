-- AddComment 
INSERT INTO 'Comment' VALUES (<comment_id>, <post_id>, <comment_time>, <comment_text>);

-- AddPollPost
INSERT INTO Post VALUES (16, 20220317184757, 'best goal ive scored!', 0, 'video');
INSERT INTO Poll_Post VALUES (<Post_id>, <num_options>);


-- AddTextPost 
-- AddImagePost
-- AddVideoPost 
-- AddUser
-- AddAdmin


-- DeleteComment 
-- DeletePollPost
-- DeleteTextPost 
-- DeleteImagePost
-- DeleteVideoPost 
-- DeleteUser
-- DeleteAdmin


-- UpdateUserReports
-- UpdatePostReports 
-- UpdatePostLikes 
-- UpdatePollOptionLikes
-- UpdateUserScore

-- GetPostDatetime
SELECT `post_time` FROM `Post` WHERE post_id = <post_id> -- change post id accordingly 

-- GetPostCreator 


-- GetPostText 
SELECT `post_text` FROM `Post` WHERE post_id = <post_id> -- change post id accordingly 

-- GetPostReporNumber
SELECT `post_report` FROM `Post` WHERE post_id = <post_id> -- change post id accordingly 

-- GetPostType
SELECT `post_type` FROM `Post` WHERE post_id = <post_id> -- change post id accordingly 

-- GetCommentCreator


-- GetPollOptions

-- GetTextPostColor


-- GetImagePost

-- GetVideoPost 

-- GetUserScore
