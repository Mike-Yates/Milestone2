-- AddComment 
INSERT INTO 'Comment' VALUES (<comment_id>, <post_id>, <comment_time>, <comment_text>);

-- AddPollPost     Note: Post(post_id, post_time, post_text, post_text, post_report, post_report) 
INSERT INTO Post VALUES (<post_id>, <post_time>, <post_text>, <post_text>, <post_report>, 'poll');
INSERT INTO Post_Creator VALUES (<phone_number>, <post_id>);
INSERT INTO Poll_Post VALUES (<post_id>, <num_options>);
-- add poll options 

-- AddTextPost 
INSERT INTO Post VALUES (<post_id>, <post_time>, <post_text>, <post_text>, <post_report>, 'text');
INSERT INTO Text_Post VALUES (<post_id>, <color>);

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
