-- AddComment 
INSERT INTO 'Comment' VALUES (<comment_id>, <post_id>, <comment_time>, <comment_text>);
INSERT INTO 'Comment_Creator' VALUES (<phone_number>, <comment_id>);

-- AddPollPost     Note: Post(post_id, post_time, post_text, post_text, post_report, post_report) 
INSERT INTO 'Post' VALUES (<post_id>, <post_time>, <post_text>, <post_text>, <post_report>, 'poll');
INSERT INTO 'Post_Creator' VALUES (<phone_number>, <post_id>);
INSERT INTO 'Poll_Post' VALUES (<post_id>, <num_options>);

-- AddPollOption 
INSERT INTO 'Poll_Options' VALUES (<post_id>, <option_id>, <option_name>, <vote_count>);

-- AddTextPost 
INSERT INTO 'Post' VALUES (<post_id>, <post_time>, <post_text>, <post_text>, <post_report>, 'text');
INSERT INTO 'Post_Creator' VALUES (<phone_number>, <post_id>);
INSERT INTO 'Text_Post' VALUES (<post_id>, <color>);

-- AddImagePost
INSERT INTO 'Post' VALUES (<post_id>, <post_time>, <post_text>, <post_text>, <post_report>, 'image');
INSERT INTO 'Post_Creator' VALUES (<phone_number>, <post_id>);
INSERT INTO 'Images' VALUES (<post_id>, <content>);

-- AddVideoPost 
INSERT INTO 'Post' VALUES (<post_id>, <post_time>, <post_text>, <post_text>, <post_report>, 'video');
INSERT INTO 'Post_Creator' VALUES (<phone_number>, <post_id>);
INSERT INTO 'Videos' VALUES (<post_id>, <content>);

-- AddActiveUser
INSERT INTO 'Active_User' VALUES (<phone_number>, <points>, <reports>);

-- AddAdmin
INSERT INTO 'Admin_User' VALUES (<phone_number>, <username>, <reports>);


-- DeleteComment 
DELETE FROM `Comment` WHERE `comment_id`=<comment_id>;

-- DeletePollPost
DELETE FROM 'Post' WHERE `post_id`=<post_id>;  
DELETE FROM 'Post_Creator' WHERE `post_id`=<post_id>; 
DELETE FROM 'Poll_Post' WHERE `post_id`=<post_id>; 

DELETE FROM 'Poll_Options' WHERE `post_id`=<post_id>; 


-- DeleteTextPost 
DELETE FROM 'Post' WHERE `post_id`=<post_id>;
DELETE FROM 'Post_Creator' WHERE `post_id`=<post_id>; 
DELETE FROM 'Text_Post' WHERE `post_id`=<post_id>; 

-- DeleteImagePost
DELETE FROM 'Post' WHERE `post_id`=<post_id>;
DELETE FROM 'Post_Creator' WHERE `post_id`=<post_id>; 
DELETE FROM 'Images' WHERE `post_id`=<post_id>; 

-- DeleteVideoPost 
DELETE FROM 'Post' WHERE `post_id`=<post_id>;
DELETE FROM 'Post_Creator' WHERE `post_id`=<post_id>; 
DELETE FROM 'Videos' WHERE `post_id`=<post_id>; 

-- DeleteActiveUser
DELETE FROM 'Active_User' WHERE `phone_number`=<phone_number>; 

-- DeleteAdmin
DELETE FROM 'Admin_User' WHERE `phone_number`=<phone_number>; 


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

-- GetPostReportNumber
SELECT `post_report` FROM `Post` WHERE post_id = <post_id> -- change post id accordingly 

-- GetPostType
SELECT `post_type` FROM `Post` WHERE post_id = <post_id> -- change post id accordingly 

-- GetCommentCreator


-- GetPollOptions

-- GetTextPostColor


-- GetImagePost

-- GetVideoPost 

-- GetUserScore
