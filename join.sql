
CREATE Table  "user"(
    id SERIAL PRIMARY KEY ,
    username VARCHAR(25)  not NULL )


    CREATE Table post(
    id SERIAL PRIMARY KEY ,
    title text not NULL,
    user_id INTEGER REFERENCES "user"(id) 
    )
     

INSERT into "user"(username) VALUES('akash'),('batash'),('sagor')





INSERT INTO post(title,user_id) VALUES ('Enjoing a sunny day with akash',1),
('Enjoing a sunny day with akash',3),('Enjoing a sunny day with akash',2)

INSERT into post(title,user_id) VALUES('lol',null)


DROP TABLE "user"

DROP TABLE "post"

SELECT * from "user"

SELECT * from "post"


-- retrive all post title by username 

SELECT  * from post join "user" on post.user_id="user".id



--table aliasing
SELECT * from post as p JOIN "user" as u on p.user_id=u.id

INSERT INTO post(id,title,user_id) VALUES (4,',thi is tiltle of pst for test puropose',null);


--lef t join

SELECT  * from post LEFT join "user" on post.user_id="user".id

