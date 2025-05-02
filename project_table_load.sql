-- Project Title 
-- "Stack Overflow Post Analysis: A SQL Portfolio Project"

-- Creation of database with name "project" 

CREATE DATABASE project;

 -- using "project" database 
 
USE project;

-- creation of tables:

CREATE TABLE badges (
    id INT PRIMARY KEY,
    user_id INT,
    name VARCHAR(255),
    date DATE
);

INSERT INTO badges (id, user_id, name, date) VALUES
(1, 1001, 'Gold Contributor', '2024-01-01'),
(2, 1002, 'Silver Helper', '2024-01-05'),
(3, 1003, 'Bronze Reviewer', '2024-02-10'),
(4, 1001, 'Silver Helper', '2024-03-15'),
(5, 1004, 'Gold Contributor', '2024-04-20'),
(6, 1001, 'Gold Contributor', '2024-05-05'),
(7, 1002, 'Bronze Reviewer', '2024-06-10'),
(8, 1003, 'Silver Helper', '2024-07-10'),
(9, 1004, 'Gold Contributor', '2024-08-01'),
(10, 1001, 'Bronze Reviewer', '2024-09-01');


CREATE TABLE comments (
    id INT PRIMARY KEY,
    post_id INT,
    user_id INT,
    creation_date DATE,
    text TEXT
);

INSERT INTO comments (id, post_id, user_id, creation_date, text) VALUES
(1, 2001, 1001, '2024-01-01', 'Great explanation!'),
(2, 2002, 1002, '2024-01-05', 'This helped a lot.'),
(3, 2003, 1003, '2024-01-10', 'Can you clarify?'),
(4, 2004, 1001, '2024-01-15', 'Excellent resource.'),
(5, 2005, 1004, '2024-01-20', 'Thank you for sharing.'),
(6, 2001, 1002, '2024-01-25', 'I agree, very useful.'),
(7, 2003, 1003, '2024-02-01', 'This solved my issue.'),
(8, 2004, 1001, '2024-02-05', 'Thanks for the info.'),
(9, 2005, 1004, '2024-02-10', 'Could use more detail.'),
(10, 2006, 1002, '2024-02-15', 'Good job on this one!');


CREATE TABLE post_history (
    id INT PRIMARY KEY,
    post_history_type_id INT,
    post_id INT,
    user_id INT,
    text TEXT,
    creation_date DATE
);

INSERT INTO post_history (id, post_history_type_id, post_id, user_id, text, creation_date) VALUES
(1, 1, 2001, 1001, 'Initial post creation', '2024-01-01'),
(2, 2, 2002, 1002, 'Edited post for clarity', '2024-01-05'),
(3, 3, 2003, 1003, 'Comment added by moderator', '2024-01-10'),
(4, 1, 2004, 1001, 'First version of the post', '2024-01-15'),
(5, 2, 2005, 1004, 'Reworded answer', '2024-01-20'),
(6, 3, 2001, 1002, 'User updated answer with additional info', '2024-01-25'),
(7, 1, 2003, 1003, 'Post originally created', '2024-02-01'),
(8, 3, 2004, 1001, 'Moderators edited content', '2024-02-05'),
(9, 2, 2005, 1004, 'User revised explanation', '2024-02-10'),
(10, 3, 2006, 1002, 'Moderators flagged inappropriate content', '2024-02-15');


CREATE TABLE post_links (
    id INT PRIMARY KEY,
    post_id INT,
    related_post_id INT,
    link_type_id INT
);

INSERT INTO post_links (id, post_id, related_post_id, link_type_id) VALUES
(1, 2001, 2002, 1),
(2, 2002, 2003, 2),
(3, 2003, 2004, 1),
(4, 2004, 2005, 3),
(5, 2005, 2006, 2),
(6, 2001, 2004, 3),
(7, 2002, 2006, 1),
(8, 2003, 2005, 2),
(9, 2004, 2006, 3),
(10, 2005, 2001, 2);



CREATE TABLE tags (
    id INT PRIMARY KEY,
    tag_name VARCHAR(255)
);

INSERT INTO tags (id, tag_name) VALUES
(1, 'SQL Joins'),
(2, 'SQL Optimization'),
(3, 'SQL Indexing'),
(4, 'SQL Subqueries'),
(5, 'SQL Group By'),
(6, 'SQL Database Normalization'),
(7, 'SQL Window Functions');


CREATE TABLE users (
    id INT PRIMARY KEY,
    display_name VARCHAR(255),
    reputation INT,
    creation_date DATE
);

INSERT INTO users (id, display_name, reputation, creation_date) VALUES
(1001, 'Alice', 1500, '2024-01-01'),
(1002, 'Bob', 1200, '2024-01-05'),
(1003, 'Charlie', 800, '2024-01-10'),
(1004, 'Dave', 1800, '2024-01-15'),
(1005, 'Eve', 1000, '2024-01-20'),
(1006, 'Frank', 2000, '2024-01-25'),
(1007, 'Grace', 1300, '2024-02-01'),
(1008, 'Hank', 1100, '2024-02-05'),
(1009, 'Ivy', 900, '2024-02-10'),
(1010, 'Jack', 1600, '2024-02-15');


CREATE TABLE votes (
    id INT PRIMARY KEY,
    post_id INT,
    vote_type_id INT,
    creation_date DATE
);

INSERT INTO votes (id, post_id, vote_type_id, creation_date) VALUES
(1, 2001, 1, '2024-01-01'),
(2, 2002, 2, '2024-01-05'),
(3, 2003, 1, '2024-01-10'),
(4, 2004, 2, '2024-01-15'),
(5, 2005, 1, '2024-01-20'),
(6, 2001, 2, '2024-01-25'),
(7, 2003, 1, '2024-02-01'),
(8, 2004, 2, '2024-02-05'),
(9, 2005, 1, '2024-02-10'),
(10, 2006, 2, '2024-02-15');


CREATE TABLE posts (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    post_tag_id INT,
    creation_date DATE,
    score INT,
    view_count INT,
    user_id INT
);

INSERT INTO posts (id, title, post_tag_id, creation_date, score, view_count, user_id)
VALUES
(2001, 'How to solve SQL JOIN issues?', 1, '2023-01-01', 10, 100, 1002),
(2002, 'Best practices for writing SQL queries', 2, '2023-01-02', 15, 150, 1004),
(2003, 'Understanding INNER JOIN in SQL', 1, '2023-01-03', 20, 200, 1010),
(2004, 'What is a LEFT JOIN?', 1, '2023-01-04', 25, 250, 1005),
(2005, 'Database indexing techniques', 3, '2023-01-05', 30, 300, 1002),
(2006, 'Explaining SQL subqueries', 4, '2023-01-06', 35, 350, 1003),
(2007, 'How to optimize SQL queries?', 2, '2023-01-07', 40, 400, 1008),
(2008, 'Database normalization concepts', 6, '2023-01-08', 45, 450, 1006),
(2009, 'SQL Aggregate Functions explained', 5, '2023-01-09', 50, 500, 1010),
(2010, 'Introduction to SQL Window Functions', 7, '2023-01-10', 55, 550, 1009);



-- select all the tables 

SELECT * FROM badges;
SELECT * FROM comments;
SELECT * FROM post_history;
SELECT * FROM post_links;
SELECT * FROM posts;
SELECT * FROM tags;
SELECT * FROM users;
SELECT * FROM votes;
-- Basic Queries

-- Explore the structure and first 5 rows of each table.
DESCRIBE badges;
SELECT * FROM badges LIMIT 5;

DESCRIBE comments;
SELECT * FROM comments LIMIT 5;

DESCRIBE post_history;
SELECT * FROM post_history LIMIT 5;

DESCRIBE post_links;
SELECT * FROM post_links LIMIT 5;

DESCRIBE posts;
SELECT * FROM posts LIMIT 5;

DESCRIBE tags;
SELECT * FROM tags LIMIT 5;

DESCRIBE users;
SELECT * FROM users LIMIT 5;

DESCRIBE votes;
SELECT * FROM votes LIMIT 5;

-- Identify the total number of records in each table.
SELECT 'badges' AS table_name, COUNT(*) AS total FROM badges
UNION ALL
SELECT 'comments', COUNT(*) FROM comments
UNION ALL
SELECT 'post_history', COUNT(*) FROM post_history
UNION ALL
SELECT 'post_links', COUNT(*) FROM post_links
UNION ALL
SELECT 'tags', COUNT(*) FROM tags
UNION ALL
SELECT 'users', COUNT(*) FROM users
UNION ALL
SELECT 'votes', COUNT(*) FROM votes
UNION ALL
SELECT 'posts', COUNT(*) FROM posts;

-- Find all posts with a view_count greater than 100
SELECT * FROM posts
WHERE view_count > 100;

-- Display comments made in 2005, sorted by creation date
SELECT * FROM comments
WHERE YEAR(creation_date) = 2005
ORDER BY creation_date;

-- Count the total number of votes for each post_id
SELECT post_id, COUNT(*) AS total_votes
FROM votes
GROUP BY post_id;

-- Count and average score of posts per post_tag_id
SELECT post_tag_id, COUNT(*) AS total_posts, AVG(score) AS avg_score
FROM posts
GROUP BY post_tag_id;

-- Advanced Queries

-- Combine the post_history and posts tables to display the title of posts and the corresponding changes made in the post history.
SELECT 
    p.id AS post_id,
    p.title,
    ph.text AS history_change,
    ph.creation_date AS history_date
FROM post_history ph
JOIN posts p ON ph.post_id = p.id;

-- Show user details and the total badges earned by each user
SELECT 
    u.id AS user_id,
    u.display_name,
    u.reputation,
    COUNT(b.id) AS total_badges
FROM users u
LEFT JOIN badges b ON u.id = b.user_id
GROUP BY u.id, u.display_name, u.reputation;

-- Fetch the titles of posts, their comments, and the users who made those comments.
SELECT 
    p.title,
    c.text AS comment_text,
    u.display_name AS commenter
FROM comments c
JOIN posts p ON c.post_id = p.id
JOIN users u ON c.user_id = u.id;

-- Combine post_links with posts to list related questions.
SELECT 
    p1.title AS main_post,
    p2.title AS related_post
FROM post_links pl
JOIN posts p1 ON pl.post_id = p1.id
JOIN posts p2 ON pl.related_post_id = p2.id;

-- Find the users who have earned badges and also made comments.
SELECT DISTINCT u.id, u.display_name
FROM users u
JOIN badges b ON u.id = b.user_id
JOIN comments c ON u.id = c.user_id;

-- Find all users with the highest reputation.
SELECT *
FROM users
WHERE reputation = (
    SELECT MAX(reputation) FROM users
);

-- Retrieve posts with the highest score in each post_tag_id.
SELECT *
FROM posts p
WHERE score = (
    SELECT MAX(score)
    FROM posts
    WHERE post_tag_id = p.post_tag_id
);

-- For each post, fetch the number of related posts from post_links.
SELECT 
    p.id AS post_id,
    p.title,
    COUNT(pl.related_post_id) AS related_post_count
FROM posts p
LEFT JOIN post_links pl ON p.id = pl.post_id
GROUP BY p.id, p.title;

-- Rank posts based on their score within each post_tag_id.
SELECT 
    id AS post_id,
    title,
    post_tag_id,
    score,
    RANK() OVER (PARTITION BY post_tag_id ORDER BY score DESC) AS score_rank
FROM posts;

-- Calculate the running total of badges earned by users in chronological order.
SELECT 
    user_id,
    name AS badge_name,
    date,
    COUNT(*) OVER (PARTITION BY user_id ORDER BY date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total_badges
FROM badges;

-- Find out the date for each user on which their total badges went over 1.
WITH badge_running AS (
    SELECT 
        user_id,
        date,
        COUNT(*) OVER (PARTITION BY user_id ORDER BY date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_badge_total
    FROM badges
)
SELECT user_id, MIN(date) AS first_date_over_1
FROM badge_running
WHERE running_badge_total > 1
GROUP BY user_id;

-- Create a CTE to calculate the average score of posts by each user and use it to:
WITH avg_post_scores AS (
    SELECT 
        u.id AS user_id,
        u.display_name,
        u.reputation,
        AVG(p.score) AS avg_score
    FROM users u
    JOIN posts p ON u.id = p.user_id
    GROUP BY u.id, u.display_name, u.reputation
)
-- Show user_ids, display_name, reputation and avg_score for users with an average score above 40.
SELECT 
    user_id,
    display_name,
    reputation,
    avg_score
FROM avg_post_scores
WHERE avg_score > 40;
-- Rank users based on their average post score. Show user_ids, display_name, reputation, avg_score and rank
WITH avg_post_scores AS (
    SELECT 
        u.id AS user_id,
        u.display_name,
        u.reputation,
        AVG(p.score) AS avg_score
    FROM users u
    JOIN posts p ON u.id = p.user_id
    GROUP BY u.id, u.display_name, u.reputation
)

SELECT 
    user_id,
    display_name,
    reputation,
    avg_score,
    RANK() OVER (ORDER BY avg_score DESC) AS score_rank
FROM avg_post_scores;

-- New Insights and Questions

-- Which users have contributed the most in terms of comments, posts, and votes?
-- Top commenters
SELECT user_id, COUNT(*) AS total_comments
FROM comments
GROUP BY user_id
ORDER BY total_comments DESC;

-- Top post creators
SELECT user_id, COUNT(*) AS total_posts
FROM posts
GROUP BY user_id
ORDER BY total_posts DESC;

-- Top voters
SELECT 
    post_id,
    COUNT(*) AS total_votes
FROM votes
GROUP BY post_id
ORDER BY total_votes DESC;

-- What types of badges are most commonly earned, and which users are the top earners?

-- Most common badge types
SELECT name, COUNT(*) AS count
FROM badges
GROUP BY name
ORDER BY count DESC;

-- Users with the most badges
SELECT user_id, COUNT(*) AS total_badges
FROM badges
GROUP BY user_id
ORDER BY total_badges DESC;

-- Which tags are associated with the highest-scoring posts?
SELECT 
    t.tag_name,
    AVG(p.score) AS avg_score
FROM posts p
JOIN tags t ON p.post_tag_id = t.id
GROUP BY t.tag_name
ORDER BY avg_score DESC;









