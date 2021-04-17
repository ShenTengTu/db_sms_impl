CREATE TABLE IF NOT EXISTS member  (
   member_id serial,
   user_email text NOT NULL ,
   user_name varchar(32) NOT NULL ,
   rigister_time timestamp NOT NULL ,
   email_verified boolean Default false,
   PRIMARY KEY (member_id),
   UNIQUE (user_email, user_name)
);

CREATE TABLE IF NOT EXISTS member_profile (
    profile_id serial,
    member_id int  REFERENCES member ON DELETE CASCADE,
    display_name varchar(64) NOT NULL,
    intro varchar(256),
    avatar_path text,
    PRIMARY KEY (profile_id),
    UNIQUE (member_id)
);