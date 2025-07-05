CREATE TABLE members (
	id number(10)	NOT NULL primary key,
	name	varchar2(255)	NULL,
	nickname	varchar2(255)	NULL,
	tel	varchar2(255)	NULL,
	email	varchar2(255)	NULL,
	password	varchar2(255)	NULL,
	access_type	varchar2(255)	NULL,
	created_at	timestamp	NULL,
	description	varchar2(4000)	NULL
);
CREATE TABLE albums (
	id	number(10)	NOT NULL primary key,
	member_id	number(10)	NOT NULL,
	name	varchar2(255)	NULL,
	description	varchar2(4000)	NULL,
	genre1	varchar2(255)	NULL,
	genre2	varchar2(255)	NULL,
	genre3	varchar2(255)	NULL,
	released_at	timestamp	NULL,
	created_at	timestamp	NULL,
	constraint fk_albums_member_id 
        foreign key(member_id) 
        references members (id) 
        on delete set null
);
CREATE TABLE playlists (
	id	number(10)	NOT NULL primary key,
	member_id	number(10)	NOT NULL,
	name	varchar2(255)	NULL,
	created_at	timestamp	NULL,
	mood1	varchar2(255)	NULL,
	mood2	varchar2(255)	NULL,
	constraint fk_playlists_member_id 
        foreign key(member_id) 
        references members (id) 
        on delete set null
);

CREATE TABLE ratings (
	member_id	number(10)	NOT NULL,
	album_id	number(10)	NOT NULL,
	score	number(2)	NULL,
	rated_at	timestamp	NULL,
	primary key(member_id,album_id),
    constraint fk_ratings_member_id 
        foreign key(member_id) 
        references members (id) 
        on delete set null,
    constraint fk_ratings_album_id 
        foreign key(album_id) 
        references albums (id) 
        on delete set null
);
CREATE TABLE album_comments (
	id	number(10)	NOT NULL primary key,
	member_id	number(10)	NOT NULL,
	album_id	number(10)	NOT NULL,
	content	varchar2(2000)	NULL,
	created_at	timestamp	NULL,
	parent_id	number(10)	NULL,
	constraint fk_album_comments_member_id 
        foreign key(member_id) 
        references members (id) 
        on delete set null,
	constraint fk_album_comments_album_id 
        foreign key(album_id) 
        references albums (id) 
        on delete set null
);
CREATE TABLE likes (
	member_id	number(10)	NOT NULL,
	playlist_id	number(10)	NOT NULL,
	created_at	timestamp	NULL,
	primary key(member_id,playlist_id),
	constraint fk_likes_member_id 
        foreign key(member_id) 
        references members (id) 
        on delete set null,
	constraint fk_likes_playlist_id 
        foreign key(playlist_id) 
        references playlists (id) 
        on delete set null
); 
CREATE TABLE playlist_comments (
	id	number(10)	NOT NULL primary key,
	member_id	number(10)	NOT NULL,
	playlist_id	number(10)	NOT NULL,
	content	varchar2(2000)	NULL,
	created_at	timestamp	NULL,
	parent_id	number(10)	NULL,
	constraint fk_playlist_comments_member_id 
        foreign key(member_id) 
        references members (id) 
        on delete set null,
	constraint fk_playlist_comments_plist_id 
        foreign key(playlist_id) 
        references playlists (id) 
        on delete set null
);
CREATE TABLE songs (
	id	number(10)	NOT NULL primary key,
	album_id	number(10)	NOT NULL,
	name	varchar2(255)	NULL,
	composer	varchar2(255)	NULL,
	lyricist	varchar2(255)	NULL,
	lyrics	varchar2(255)	NULL,
	view_count	number	NULL,
	constraint fk_songs_album_id 
        foreign key(album_id) 
        references albums (id) 
        on delete set null
);
CREATE TABLE memberships (
	id	number(10)	NOT NULL primary key,
	name	varchar2(255)	NULL,
	price	number(10)	NULL,
	period	number(10)	NULL
);
CREATE TABLE membership_members (
	id	number(10)	NOT NULL primary key,
	membership_id	number(10)	NOT NULL,
	member_id	number(10)	NOT NULL,
	started_at	timestamp	NULL,
	stopped_at	timestamp	NULL,
	constraint fk_memship_mems_mem_id 
        foreign key(member_id) 
        references members (id) 
        on delete set null,
	constraint fk_memship_mems_memship_id 
        foreign key(membership_id) 
        references memberships (id) 
        on delete set null
);
CREATE TABLE playlist_songs (
	song_id	number(10)	NOT NULL,
	playlist_id	number(10)	NOT NULL,
	primary key(song_id,playlist_id),
	constraint fk_playlist_songs_song_id 
        foreign key(song_id) 
        references songs (id) 
        on delete set null,
	constraint fk_playlist_songs_playlist_id 
        foreign key(playlist_id) 
        references playlists (id) 
        on delete set null
);

--시퀀스 생성-- 
create sequence seq_members_id
create sequence seq_albums_id 
create sequence seq_playlists_id
create sequence seq_album_comments_id
create sequence seq_playlist_comments_id
create sequence seq_songs_id
create sequence seq_memberships_id
create sequence seq_membership_members_id
