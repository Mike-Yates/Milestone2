
-- Actor (pid, fname, lname, gender)
CREATE TABLE IF NOT EXISTS Actor  ( 
    pid INT NOT NULL PRIMARY KEY,
    fname VARCHAR(15) NOT NULL,  -- first name 
    lname VARCHAR(15) NOT NULL, -- last name 
    gender VARCHAR(10) NOT NULL -- last name 
);

INSERT INTO Actor VALUES (0, 'Mike', 'Yates', 'male');
INSERT INTO Actor VALUES (1, 'Justin', 'Logan', 'male');
INSERT INTO Actor VALUES (2, 'Kunal', 'Cha', 'male');
INSERT INTO Actor VALUES (3, 'Gabri', 'Hym', 'male');
INSERT INTO Actor VALUES (4, 'Lexi', 'Pass', 'female');
INSERT INTO Actor VALUES (5, 'Lizzy', 'Lynch', 'female');
INSERT INTO Actor VALUES (6, 'Jennifer', 'Lawrence', 'female');
INSERT INTO Actor VALUES (7, 'Daniel', 'Tosh', 'male');
INSERT INTO Actor VALUES (8, 'Emma', 'Watson', 'female');

-- Movie (mid, name year, revenue)  
CREATE TABLE IF NOT EXISTS Movie  ( 
    mid INT NOT NULL PRIMARY KEY,
    m_name VARCHAR(15) NOT NULL,  -- name represent the movie name 
    m_year int NOT NULL, -- year is a taken keyword 
    revenue int NOT NULL -- in millions
);
INSERT INTO Movie VALUES(0, "The Wolf of Wallstreet", 2013, 392);
INSERT INTO Movie VALUES(1, "movie 2", 2013, 392);
INSERT INTO Movie VALUES(2, "movie 3", 2014, 392);
INSERT INTO Movie VALUES(3, "movie 4", 2013, 400);
INSERT INTO Movie VALUES(4, "movie 5", 2017, 200);
INSERT INTO Movie VALUES(5, "movie 6", 2016, 150);
INSERT INTO Movie VALUES(6, "movie 7", 2014, 225);
INSERT INTO Movie VALUES(7, "movie 8", 2020, 330);
INSERT INTO Movie VALUES(8, "movie 9", 2018, 275);
INSERT INTO Movie VALUES(9, "movie 10", 2014, 400);
INSERT INTO Movie VALUES(10, "No Cast", 2013, 100);



-- Directors (did, fname, lname)
CREATE TABLE IF NOT EXISTS Directors  ( 
    did INT NOT NULL PRIMARY KEY,
    fname VARCHAR(15) NOT NULL,  -- first name 
    lname VARCHAR(15) NOT NULL -- last name 
);
-- Martin Scorsese
INSERT INTO Directors VALUES(0, "Martin", "Scorsese");
INSERT INTO Directors VALUES(1, "name1", "name2");
INSERT INTO Directors VALUES(2, "name3", "name4");
INSERT INTO Directors VALUES(3, "name5", "name6");
INSERT INTO Directors VALUES(4, "name7", "name8");

-- Casts (pid, mid, role) 
CREATE TABLE IF NOT EXISTS Casts  ( 
    pid INT NOT NULL,  -- foriegn key to to Actor 
    mid INT NOT NULL,   -- foriegn key to Movie 
    m_role VARCHAR(15) NOT NULL -- 'role' is a taken keyword 
);
INSERT INTO Casts VALUES(0, 0, "actor");  -- mike yates was in wolf of wallstreet
INSERT INTO Casts VALUES(1, 0, "actor");  
INSERT INTO Casts VALUES(2, 1, "actor");  
INSERT INTO Casts VALUES(3, 2, "actor");  
INSERT INTO Casts VALUES(4, 1, "actor");  
INSERT INTO Casts VALUES(5, 3, "actor");  
INSERT INTO Casts VALUES(6, 5, "actor");  
INSERT INTO Casts VALUES(1, 6, "actor");  
INSERT INTO Casts VALUES(2, 4, "actor");  
INSERT INTO Casts VALUES(3, 4, "actor");  
INSERT INTO Casts VALUES(4, 7, "actor");  
INSERT INTO Casts VALUES(7, 8, "actor");  
INSERT INTO Casts VALUES(8, 9, "actor");  

CREATE TABLE IF NOT EXISTS Movie_directors ( 
    did INT NOT NULL,
    mid INT NOT NULL,  
    PRIMARY KEY (did, mid)
);
-- dir 0 to 4 , movies 0 to 9 
INSERT INTO Movie_directors VALUES(0, 0);  
INSERT INTO Movie_directors VALUES(1, 1);  
INSERT INTO Movie_directors VALUES(2, 4);  
INSERT INTO Movie_directors VALUES(3, 2);  
INSERT INTO Movie_directors VALUES(4, 3);  
INSERT INTO Movie_directors VALUES(4, 5);  
INSERT INTO Movie_directors VALUES(4, 6);  
INSERT INTO Movie_directors VALUES(3, 7);  
INSERT INTO Movie_directors VALUES(4, 8);  
INSERT INTO Movie_directors VALUES(4, 9);  



