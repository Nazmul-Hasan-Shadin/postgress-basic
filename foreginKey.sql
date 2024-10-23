-- Active: 1729428040566@@127.0.0.1@5432@ph

CREATE Table  "user"(
    id SERIAL PRIMARY KEY ,
    username VARCHAR(25)  not NULL
    )


    CREATE Table post(
    id SERIAL PRIMARY KEY ,
    title text not NULL,
    user_id INTEGER REFERENCES "user"(id)  ON DELETE CASCADE
    )
     

     --after delete a user it set null for user releated post

         CREATE Table post(
    id SERIAL PRIMARY KEY ,
    title text not NULL,
    user_id INTEGER REFERENCES "user"(id)  ON DELETE set NULL
    ) 


    --after delete user it will set default 2 in  user post at user_id

           CREATE Table post(
    id SERIAL PRIMARY KEY ,
    title text not NULL,
    user_id INTEGER REFERENCES "user"(id)  ON DELETE set DEFAULT DEFAULT 2
    )




 Alter table post alter COLUMN user_id set NOT NULL

INSERT into "user"(username) VALUES('akash'),('batash'),('sagor')




INSERT INTO post(title,user_id) VALUES ('Enjoing a sunny day with akash',1),
('Enjoing a sunny day with akash',3),('Enjoing a sunny day with akash',2)


INSERT into post(title,user_id) VALUES('lol',null)


DROP TABLE "user"

DROP TABLE "post"

SELECT * from "user"

SELECT * from "post"



-- delte      user with user post       

--deletion constraint on delete user
-- restrict deletion => on delete restrict /on delete no action (default)
--cascadin deletion => on delete cascade its delete usr with user related all post
---setting s null=> on delete set null
-- set default value=> on delete set default

DELETE from "user" WHERE id=3

