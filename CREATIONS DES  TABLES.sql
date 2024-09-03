CREATE TABLE prime_gaming(
   id_prime_gaming INT AUTO_INCREMENT,
   id_advantages INT,
   advantages VARCHAR(50),
   created_at DATE,
   PRIMARY KEY(id_prime_gaming)
);

CREATE TABLE amazon_rewards(
   id_amazon_rewards INT,
   reward_name VARCHAR(50),
   created_at DATE,
   ended_at DATE,
   PRIMARY KEY(id_amazon_rewards)
);

CREATE TABLE community(
   Id_community INT AUTO_INCREMENT,
   name VARCHAR(50),
   created_at DATE,
   ended_at VARCHAR(50),
   PRIMARY KEY(Id_community)
);

CREATE TABLE inventory(
   Id_inventory INT AUTO_INCREMENT,
   created_at DATE,
   updated_at DATE,
   PRIMARY KEY(Id_inventory)
);

CREATE TABLE _user(
   id_user INT,
   userName VARCHAR(50),
   E_mail VARCHAR(50),
   date_de_naissance DATE,
   telephone  VARCHAR(50),
   role VARCHAR(50),
   amazon_rewards_id INT,   
   prime_gaming_id INT,
   PRIMARY KEY(id_user),
   FOREIGN KEY(amazon_rewards_id) REFERENCES amazon_rewards(id_amazon_rewards),
   FOREIGN KEY(prime_gaming_id) REFERENCES prime_gaming(id_prime_gaming)
);

CREATE TABLE following(
   id_followings INT AUTO_INCREMENT,
   following INT,
   nbrFollowing INT,
   createdAt DATE,
   user_id INT NOT NULL,
   PRIMARY KEY(id_followings),
   FOREIGN KEY(user_id) REFERENCES _user(id_user)
);

CREATE TABLE gift_card(
   id_gift_card INT AUTO_INCREMENT,
   cardCode VARCHAR(50),
   _value INT,
   created_at DATE,
   redeemed_at DATE,
   ended_at DATE,
   user_id INT NOT NULL,
   PRIMARY KEY(id_gift_card),
   FOREIGN KEY(user_id) REFERENCES _user(id_user)
);

CREATE TABLE linked_games_accounts(
   id_linked_games_accounts INT AUTO_INCREMENT,
   link_id INT,
   game_account_id INT,
   platfrom VARCHAR(255),
   linked_at DATE,
   user_id INT NOT NULL,
   PRIMARY KEY(id_linked_games_accounts),
   FOREIGN KEY(user_id) REFERENCES _user(id_user)
);

CREATE TABLE whispers(
   id_whispers INT AUTO_INCREMENT,
   sender_id INT,
   receiver_id INT,
   message VARCHAR(500),
   user_id INT NOT NULL,
   PRIMARY KEY(id_whispers),
   FOREIGN KEY(user_id) REFERENCES _user(id_user)
);

CREATE TABLE bits(
   id_bits INT AUTO_INCREMENT,
   amount INT,
   purchased_id DATE,
   created_at DATE,
   user_id INT NOT NULL,
   PRIMARY KEY(id_bits),
   FOREIGN KEY(user_id) REFERENCES _user(id_user)
);

CREATE TABLE bits_msg(
   id_bits_msg INT AUTO_INCREMENT,
   message VARCHAR(255),
   created_at DATE,
   bits_id INT NOT NULL,
   PRIMARY KEY(id_bits_msg),
   FOREIGN KEY(bits_id) REFERENCES bits(id_bits)
);

CREATE TABLE interested_in(
   id_interestedIn INT AUTO_INCREMENT,
   created_at DATE,
   end_at DATE,
   following_id INT NOT NULL,
   PRIMARY KEY(id_interestedIn),
   FOREIGN KEY(following_id) REFERENCES following(id_followings)
);

CREATE TABLE emotes_twitch(
   id_emotesTwitch INT AUTO_INCREMENT,
   emote_name VARCHAR(50),
   emote_url VARCHAR(255),
   created_at DATE,
   user_id INT NOT NULL,
   PRIMARY KEY(id_emotesTwitch),
   FOREIGN KEY(user_id) REFERENCES _user(id_user)
);

CREATE TABLE channel(
   id_channel INT AUTO_INCREMENT,
   channel_name VARCHAR(50),
   created_at DATE,
   updated_at DATE,
   end_at DATE,
   user_id INT NOT NULL,
   PRIMARY KEY(Id_Channel),
   UNIQUE(user_id),
   FOREIGN KEY(user_id) REFERENCES _user(id_user)
);

CREATE TABLE moderator(
   id_moderator INT AUTO_INCREMENT,
   userName VARCHAR(50),
   granted_at DATE,
   ended_at DATE,
   channel_id INT NOT NULL,
   PRIMARY KEY(id_moderator),
   FOREIGN KEY(channel_id) REFERENCES channel(id_channel)
);

CREATE TABLE channels_pts(
   Id_channelsPts INT AUTO_INCREMENT,
   created_at DATE,
   channel_id INT NOT NULL,
   PRIMARY KEY(Id_channelsPts),
   FOREIGN KEY(channel_id) REFERENCES channel(id_channel)
);

CREATE TABLE my_emotes(
   Id_my_emotes INT AUTO_INCREMENT,
   emote_name VARCHAR(50),
   emote_url VARCHAR(150),
   created_at DATE,
   user_id INT NOT NULL,
   PRIMARY KEY(Id_my_emotes),
   FOREIGN KEY(user_id) REFERENCES _user(id_user)
);

CREATE TABLE badges(
   id_badges INT AUTO_INCREMENT,
   name VARCHAR(50),
   level INT,
   channel VARCHAR(50),
   description TEXT,
   created_at DATE,
   badges_id INT NOT NULL,
   PRIMARY KEY(id_badges),
   FOREIGN KEY(badges_id) REFERENCES _user(id_user)
);

CREATE TABLE streams(
   Id_stream INT AUTO_INCREMENT,
   Title  VARCHAR(255) NOT NULL,
   Description TEXT,
   start_time DATETIME NOT NULL,
   end_time DATETIME NOT NULL,
   channel_id INT NOT NULL,
   PRIMARY KEY(Id_stream),
   FOREIGN KEY(channel_id) REFERENCES channel(id_channel)
);

CREATE TABLE clips(
   Id_clips INT AUTO_INCREMENT,
   title_clip VARCHAR(50),
   langue_clip VARCHAR(50),
   nb_vue_clip INT,
   duration_clip TIME,
   stream_id INT NOT NULL,
   PRIMARY KEY(Id_clips),
   FOREIGN KEY(stream_id) REFERENCES streams(Id_stream)
);

CREATE TABLE recommended_channels(
   id_recommended_channels INT AUTO_INCREMENT,
   priority INT,
   created_at DATE,
   channel_id INT NOT NULL,
   PRIMARY KEY(id_recommended_channels),
   FOREIGN KEY(channel_id) REFERENCES channel(id_channel)
);

CREATE TABLE collections(
   Id_collections INT AUTO_INCREMENT,
   created_at DATE,
   ended_at DATE,
   channel_id INT NOT NULL,
   PRIMARY KEY(Id_collections),
   FOREIGN KEY(channel_id) REFERENCES channel(id_channel)
);

CREATE TABLE campaigns(
   Id_campaigns INT AUTO_INCREMENT,
   campain_name VARCHAR(50),
   start_date DATE,
   end_date DATE,
   user_id INT NOT NULL,
   PRIMARY KEY(Id_campaigns),
   FOREIGN KEY(user_id) REFERENCES _user(id_user)
);

CREATE TABLE statistics(
   Id_statistics INT AUTO_INCREMENT,
   created_at VARCHAR(50),
   updated_at DATE,
   channel_id INT NOT NULL,
   PRIMARY KEY(Id_statistics),
   FOREIGN KEY(channel_id) REFERENCES channel(id_channel)
);

CREATE TABLE extensions(
   Id_extensions INT AUTO_INCREMENT,
   created_at DATE,
   channel_id INT NOT NULL,
   PRIMARY KEY(Id_extensions),
   FOREIGN KEY(Channel_id) REFERENCES channel(id_channel)
);

CREATE TABLE ads(
   Id_ads INT AUTO_INCREMENT,
   created_at DATE,
   modified_at DATE,
   channel_id INT NOT NULL,
   PRIMARY KEY(Id_ads),
   FOREIGN KEY(channel_id) REFERENCES channel(id_channel)
);

CREATE TABLE tickets(
   Id_tickets INT AUTO_INCREMENT,
   created_at DATE,
   ended_at DATE,
   user_id INT NOT NULL,
   PRIMARY KEY(Id_tickets),
   FOREIGN KEY(user_id) REFERENCES _user(id_user)
);

CREATE TABLE BanListStreamers(
   Id_ban_list_streamers INT AUTO_INCREMENT,
   banned_at DATE,
   ended_at DATE,
   channel_id INT NOT NULL,
   PRIMARY KEY(Id_ban_list_streamers),
   FOREIGN KEY(channel_id) REFERENCES channel(id_channel)
);

CREATE TABLE affiliated_partners(
   Id_affiliated_partners INT AUTO_INCREMENT,
   created_at DATE,
   ended_at DATE,
   channel_id INT NOT NULL,
   PRIMARY KEY(Id_affiliated_partners),
   FOREIGN KEY(channel_id) REFERENCES channel(id_channel)
);

CREATE TABLE twitch_partners(
   Id_twitchPartners INT AUTO_INCREMENT,
   created_at DATE,
   channel_id INT NOT NULL,
   PRIMARY KEY(Id_twitchPartners),
   FOREIGN KEY(Channel_id) REFERENCES channel(Id_Channel)
);

CREATE TABLE contact(
   Id_contact INT AUTO_INCREMENT,
   name VARCHAR(50),
   email VARCHAR(150),
   created_at DATE,
   user_id INT NOT NULL,
   PRIMARY KEY(Id_contact),
   FOREIGN KEY(user_id) REFERENCES _user(id_user)
);

CREATE TABLE transaction(
   Id_transaction INT AUTO_INCREMENT,
   created_at DATE,
   ended_at DATE,
   user_id INT NOT NULL,
   PRIMARY KEY(Id_transaction),
   FOREIGN KEY(user_id) REFERENCES _user(id_user)
);

CREATE TABLE friends(
   id_friend INT  AUTO_INCREMENT,
   frienshipId INT,
   established_at VARCHAR(50),
   ended_at DATE,
   whispers_id INT NOT NULL,
   PRIMARY KEY(id_friend),
   FOREIGN KEY(whispers_id) REFERENCES whispers(id_whispers)
);

CREATE TABLE followers(
   follower INT  AUTO_INCREMENT,
   nbrFollowers VARCHAR(50),
   followerTime VARCHAR(50),
   created_at DATE,
   ended_at DATE,
   followings_id INT NOT NULL,
   PRIMARY KEY(follower),
   FOREIGN KEY(followings_id) REFERENCES following(id_followings)
);

CREATE TABLE subs(
   id_sub INT  AUTO_INCREMENT,
   nbrSubs INT,
   level INT,
   price INT,
   typeSub VARCHAR(50),
   totalTime DATETIME,
   created_at DATE,
   update_at DATE,
   ended_at DATE,
   channel_id INT NOT NULL,
   user_id INT NOT NULL,
   PRIMARY KEY(id_sub),
   FOREIGN KEY(channel_id) REFERENCES channel(id_channel),
   FOREIGN KEY(user_id) REFERENCES _user(id_user)
);

CREATE TABLE gift_subs(
   id_gift_subs INT  AUTO_INCREMENT,
   id_gifter INT,
   nbr_gift_subs INT,
   level INT,
   price INT,
   created_at DATE,
   updated_at DATE,
   end_at DATE,
   sub_id INT NOT NULL,
   PRIMARY KEY(id_gift_subs),
   FOREIGN KEY(sub_id) REFERENCES subs(id_sub)
);

CREATE TABLE banned_users(
   id_banned_user INT  AUTO_INCREMENT,
   ban_id INT,
   reason VARCHAR(200),
   user_id INT NOT NULL,
   moderator_id INT NOT NULL,
   PRIMARY KEY(id_banned_user),
   FOREIGN KEY(user_id) REFERENCES _user(id_user),
   FOREIGN KEY(moderator_id) REFERENCES moderator(id_moderator)
);

CREATE TABLE my_clips(
   id_myClips INT AUTO_INCREMENT,
   clip_url VARCHAR(255),
   created_at DATE,
   ended_at VARCHAR(50),
   clips_id INT NOT NULL,
   PRIMARY KEY(id_myClips),
   FOREIGN KEY(clips_id) REFERENCES clips(Id_clips)
);

CREATE TABLE connections(
   id_connections INT AUTO_INCREMENT,
   service VARCHAR(200),
   linked_at DATE,
   ended_at DATE,
   connections_id INT NOT NULL,
   PRIMARY KEY(id_connections),
   FOREIGN KEY(connections_id) REFERENCES channel(Id_Channel)
);

CREATE TABLE wallet(
   id_wallet INT,
   created_at DATE,
   updated_at DATE,
   balance INT,
   currency VARCHAR(5),
   sub_id INT NOT NULL,
   PRIMARY KEY(id_wallet),
   UNIQUE(sub_id),
   FOREIGN KEY(sub_id) REFERENCES subs(id_sub)
);

CREATE TABLE categories(
   id_categories INT AUTO_INCREMENT,
   name VARCHAR(50),
   description VARCHAR(150),
   created_at DATE,
   categories_id INT NOT NULL,
   PRIMARY KEY(id_categories),
   FOREIGN KEY(categories_id) REFERENCES channel(Id_Channel)
);

CREATE TABLE sub_categories(
   id_subCategories INT AUTO_INCREMENT,
   name VARCHAR(50),
   description VARCHAR(150),
   categories_id INT NOT NULL,
   PRIMARY KEY(id_subCategories),
   FOREIGN KEY(categories_id) REFERENCES categories(id_categories)
);

CREATE TABLE tags(
   id_tags INT AUTO_INCREMENT,
   tag_name VARCHAR(50),
   description VARCHAR(150),
   created_at DATE,
   channel_id INT NOT NULL,
   PRIMARY KEY(id_tags),
   FOREIGN KEY(channel_id) REFERENCES channel(id_channel)
);

CREATE TABLE live_channel(
   id_live_channel_ INT AUTO_INCREMENT,
   title VARCHAR(150),
   started_at DATETIME NOT NULL,
   ended_at DATETIME NOT NULL,
   stream_id INT NOT NULL,
   PRIMARY KEY(id_live_channel_),
   FOREIGN KEY(stream_id) REFERENCES streams(Id_stream)
);

CREATE TABLE channel_clips(
   id_channel_clips INT AUTO_INCREMENT,
   id_clips INT,
   clip_url VARCHAR(150),
   created_at DATE,
   clips_id INT NOT NULL,
   PRIMARY KEY(id_channel_clips),
   FOREIGN KEY(clips_id) REFERENCES clips(id_clips)
);

CREATE TABLE all_vids(
   id_all_vids INT AUTO_INCREMENT,
   title VARCHAR(100),
   start_time DATETIME NOT NULL,
   end_time DATETIME NOT NULL,
   stream_id INT NOT NULL,
   PRIMARY KEY(id_all_vids),
   FOREIGN KEY(stream_id) REFERENCES streams(id_stream)
);

CREATE TABLE past_streams(
   id_past_streams INT AUTO_INCREMENT,
   title VARCHAR(50),
   start_time DATETIME NOT NULL,
   end_time DATETIME NOT NULL,
   all_vids_id INT NOT NULL,
   PRIMARY KEY(id_past_streams),
   FOREIGN KEY(all_vids_id) REFERENCES all_vids(id_all_vids)
);

CREATE TABLE highlights(
   id_highlights INT AUTO_INCREMENT,
   title VARCHAR(50),
   created_at DATE,
   all_vids_id INT NOT NULL,
   PRIMARY KEY(id_highlights),
   FOREIGN KEY(all_vids_id) REFERENCES all_vids(id_all_vids)
);

CREATE TABLE trending_streamers(
   id_trending_streams INT AUTO_INCREMENT,
   _rank INT,
   timeWindow VARCHAR(50),
   created_at DATETIME NOT NULL,
   all_vids_id INT NOT NULL,
   PRIMARY KEY(id_trending_streams),
   FOREIGN KEY(all_vids_id) REFERENCES all_vids(id_all_vids)
);

CREATE TABLE stream_chat(
   id_stream_chat INT  AUTO_INCREMENT,
   live_id INT,
   message VARCHAR(255),
   sent_at DATETIME NOT NULL,
   all_vids_id INT NOT NULL,
   PRIMARY KEY(id_stream_chat),
   FOREIGN KEY(all_vids_id) REFERENCES all_vids(id_all_vids)
);

CREATE TABLE EVOLUER(
   id_user INT,
   follower INT,
   PRIMARY KEY(id_user, follower),
   FOREIGN KEY(id_user) REFERENCES _user(id_user),
   FOREIGN KEY(follower) REFERENCES followers(follower)
);

CREATE TABLE MONTER(
   community_id INT,
   channel_id INT,
   PRIMARY KEY(community_id, channel_id),
   FOREIGN KEY(community_id) REFERENCES channel(Id_Channel),
   FOREIGN KEY(channel_id) REFERENCES community(Id_community)
);

CREATE TABLE CLASSIFIER(
   inventory_id INT,
   user_id INT,
   PRIMARY KEY(inventory_id, user_id),
   FOREIGN KEY(inventory_id) REFERENCES _user(id_user),
   FOREIGN KEY(user_id) REFERENCES inventory(Id_inventory)
);
