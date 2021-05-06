/* postgresql */

CREATE TABLE IF NOT EXISTS member (
	member_id SERIAL NOT NULL, 
	user_email TEXT NOT NULL, 
	user_name VARCHAR(32) NOT NULL, 
	password_hash CHAR(60) NOT NULL, 
	rigister_time TIMESTAMP WITHOUT TIME ZONE NOT NULL, 
	email_verified BOOLEAN, 
	PRIMARY KEY (member_id), 
	UNIQUE (user_email), 
	UNIQUE (user_name)
)


CREATE TABLE IF NOT EXISTS member_profile (
	member_id INTEGER NOT NULL, 
	display_name VARCHAR(64) NOT NULL, 
	intro VARCHAR(256), 
	avatar_path TEXT, 
	PRIMARY KEY (member_id), 
	FOREIGN KEY(member_id) REFERENCES member (member_id) ON DELETE CASCADE
)

