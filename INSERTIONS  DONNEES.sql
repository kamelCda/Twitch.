-- insertions de donnees    


INSERT INTO prime_gaming (id_advantages, advantages, created_at) VALUES
(101, 'Accès anticipé', '2023-01-15'),
(102, 'Bonus de contenu', '2023-03-20'),
(103, 'Offres exclusives', '2023-05-30'),
(104, 'Emotes spéciales', '2023-07-10'),
(105, 'Skins uniques', '2023-08-05'),
(106, 'Récompenses mensuelles', '2023-09-01'),
(107, 'Jeux gratuits', '2023-10-10'),
(108, 'Extension gratuite', '2023-11-15'),
(109, 'XP doublé', '2023-12-01'),
(110, 'Loot box gratuite', '2024-01-20');


INSERT INTO amazon_rewards (id_amazon_rewards, reward_name, created_at, ended_at) VALUES
(1, 'Réduction 10%', '2023-01-10', '2023-02-10'),
(2, 'Livraison gratuite', '2023-02-15', '2023-03-15'),
(3, 'Carte-cadeau 5€', '2023-04-01', '2023-05-01'),
(4, 'Cashback 5%', '2023-05-05', '2023-06-05'),
(5, 'Réduction 20%', '2023-07-10', '2023-08-10'),
(6, 'Prime vidéo gratuite', '2023-09-01', '2023-10-01'),
(7, 'Musique illimitée', '2023-10-10', '2023-11-10'),
(8, 'Essai gratuit', '2023-11-15', '2023-12-15'),
(9, 'Réduction 50%', '2023-12-20', '2024-01-20'),
(10, 'Point de fidélité doublé', '2024-02-01', '2024-03-01');


INSERT INTO community (Id_community, name, created_at, ended_at) VALUES
(1, 'Communauté des joueurs', '2023-02-05', '2023-05-05'),
(2, 'Fans de RPG', '2023-03-10', '2023-06-10'),
(3, 'Adeptes des FPS', '2023-04-15', '2023-07-15'),
(4, 'Fans de rétro gaming', '2023-05-20', '2023-08-20'),
(5, 'Communauté eSport', '2023-06-25', '2023-09-25'),
(6, 'Passionnés de stratégie', '2023-07-30', '2023-10-30'),
(7, "Amateurs de jeux d'horreur", '2023-08-05', '2023-11-05'),
(8, 'Groupe MMORPG', '2023-09-10', '2023-12-10'),
(9, 'Communauté VR', '2023-10-15', '2024-01-15'),
(10, 'Joueurs mobile', '2023-11-20', '2024-02-20');


INSERT INTO inventory (created_at, updated_at) VALUES
('2023-01-01', '2023-01-15'),
('2023-02-01', '2023-02-15'),
('2023-03-01', '2023-03-15'),
('2023-04-01', '2023-04-15'),
('2023-05-01', '2023-05-15'),
('2023-06-01', '2023-06-15'),
('2023-07-01', '2023-07-15'),
('2023-08-01', '2023-08-15'),
('2023-09-01', '2023-09-15'),
('2023-10-01', '2023-10-15');


INSERT INTO _user (id_user, userName, E_mail, date_de_naissance, telephone, role, amazon_rewards_id, prime_gaming_id) VALUES
(1, 'JeanDupont', 'jean.dupont@mail.com', '1990-05-12', '1234567890', 'Membre', 1, 1),
(2, 'MarieDubois', 'marie.dubois@mail.com', '1985-08-24', '9876543210', 'Membre', 2, 2),
(3, 'PierreMartin', 'pierre.martin@mail.com', '1992-11-30', '5556667777', 'Modérateur', 3, 3),
(4, 'LucieLemoine', 'lucie.lemoine@mail.com', '1995-03-18', '4561237890', 'Membre', 4, 4),
(5, 'DavidRoux', 'david.roux@mail.com', '1988-07-22', '3216549870', 'Membre', 5, 5),
(6, 'EmmaGiraud', 'emma.giraud@mail.com', '1993-12-02', '7894561230', 'Modérateur', 6, 6),
(7, 'SophieBlanc', 'sophie.blanc@mail.com', '1980-10-14', '6547893210', 'Membre', 7, 7),
(8, 'HugoMoreau', 'hugo.moreau@mail.com', '1989-04-26', '9638527410', 'Membre', 8, 8),
(9, 'ChloéPerrin', 'chloe.perrin@mail.com', '1994-09-30', '1478529630', 'Membre', 9, 9),
(10, 'LucasPetit', 'lucas.petit@mail.com', '1987-01-11', '8523697410', 'Modérateur', 10, 10);


INSERT INTO following (following, nbrFollowing, createdAt, user_id) VALUES
(1001, 5, '2023-01-10', 1),
(1002, 3, '2023-02-12', 2),
(1003, 7, '2023-03-14', 3),
(1004, 4, '2023-04-16', 4),
(1005, 6, '2023-05-18', 5),
(1006, 8, '2023-06-20', 6),
(1007, 2, '2023-07-22', 7),
(1008, 9, '2023-08-24', 8),
(1009, 1, '2023-09-26', 9),
(1010, 10, '2023-10-28', 10);


INSERT INTO gift_card (cardCode, _value, created_at, redeemed_at, ended_at, user_id) VALUES
('ABC123', 50, '2023-01-20', '2023-02-20', '2023-02-28', 1),
('XYZ789', 25, '2023-02-25', '2023-03-25', '2023-03-31', 2),
('LMN456', 75, '2023-03-30', '2023-04-30', '2023-05-05', 3),
('GHI101', 100, '2023-04-15', '2023-05-15', '2023-05-20', 4),
('JKL202', 150, '2023-05-20', '2023-06-20', '2023-06-25', 5),
('MNO303', 200, '2023-06-25', '2023-07-25', '2023-07-30', 6),
('PQR404', 50, '2023-07-30', '2023-08-30', '2023-09-05', 7),
('STU505', 75, '2023-08-05', '2023-09-05', '2023-09-10', 8),
('VWX606', 100, '2023-09-10', '2023-10-10', '2023-10-15', 9),
('YZA707', 150, '2023-10-15', '2023-11-15', '2023-11-20', 10);


INSERT INTO linked_games_accounts (link_id, game_account_id, platfrom, linked_at, user_id) VALUES
(101, 202, 'PlayStation', '2023-01-05', 1),
(102, 203, 'Xbox', '2023-02-06', 2),
(103, 204, 'PC', '2023-03-07', 3),
(104, 205, 'Switch', '2023-04-08', 4),
(105, 206, 'Mobile', '2023-05-09', 5),
(106, 207, 'Steam', '2023-06-10', 6),
(107, 208, 'Origin', '2023-07-11', 7),
(108, 209, 'Epic Games', '2023-08-12', 8),
(109, 210, 'Ubisoft', '2023-09-13', 9),
(110, 211, 'GOG', '2023-10-14', 10);


INSERT INTO whispers (sender_id, receiver_id, message, user_id) VALUES
(1, 2, 'Salut, comment ça va?', 1),
(2, 3, 'Ça va bien, et toi?', 2),
(3, 1, 'Tout va bien ici!', 3),
(4, 5, 'Tu joues ce soir?', 4),
(5, 6, 'Oui, à 20h.', 5),
(6, 7, 'Je suis en ligne maintenant.', 6),
(7, 8, 'Parfait, on se rejoint.', 7),
(8, 9, 'Super, à toute!', 8),
(9, 10, 'On se fait une partie?', 9),
(10, 1, 'Avec plaisir!', 10);


INSERT INTO bits (amount, purchased_id, created_at, user_id) VALUES
(500, '2023-01-15', '2023-01-15', 1),
(1000, '2023-02-18', '2023-02-18', 2),
(1500, '2023-03-20', '2023-03-20', 3),
(2000, '2023-04-22', '2023-04-22', 4),
(2500, '2023-05-25', '2023-05-25', 5),
(3000, '2023-06-28', '2023-06-28', 6),
(3500, '2023-07-30', '2023-07-30', 7),
(4000, '2023-08-02', '2023-08-02', 8),
(4500, '2023-09-04', '2023-09-04', 9),
(5000, '2023-10-06', '2023-10-06', 10);


INSERT INTO bits_msg (message, created_at, bits_id) VALUES
('Merci pour les bits!', '2023-01-16', 1),
('Trop sympa!', '2023-02-19', 2),
('Incroyable, merci!', '2023-03-21', 3),
('C\'est génial, merci!', '2023-04-23', 4),
('Waouh, merci beaucoup!', '2023-05-26', 5),
('Je suis ravi, merci!', '2023-06-29', 6),
('Quelle surprise, merci!', '2023-07-31', 7),
('Je n\'en reviens pas, merci!', '2023-08-03', 8),
('Trop gentil, merci!', '2023-09-05', 9),
('Merci du fond du cœur!', '2023-10-07', 10);


INSERT INTO interested_in (created_at, end_at, following_id) VALUES
('2023-01-12', '2023-02-12', 1),
('2023-02-14', '2023-03-14', 2),
('2023-03-16', '2023-04-16', 3),
('2023-04-18', '2023-05-18', 4),
('2023-05-20', '2023-06-20', 5),
('2023-06-22', '2023-07-22', 6),
('2023-07-24', '2023-08-24', 7),
('2023-08-26', '2023-09-26', 8),
('2023-09-28', '2023-10-28', 9),
('2023-10-30', '2023-11-30', 10);


INSERT INTO emotes_twitch (emote_name, emote_url, created_at, user_id) VALUES
('Kappa', 'http://emote.url/kappa', '2023-01-01', 1),
('PogChamp', 'http://emote.url/pogchamp', '2023-02-01', 2),
('FeelsGoodMan', 'http://emote.url/feelsgoodman', '2023-03-01', 3),
('LUL', 'http://emote.url/lul', '2023-04-01', 4),
('Kreygasm', 'http://emote.url/kreygasm', '2023-05-01', 5),
('4Head', 'http://emote.url/4head', '2023-06-01', 6),
('DansGame', 'http://emote.url/dansgame', '2023-07-01', 7),
('ResidentSleeper', 'http://emote.url/residentsleeper', '2023-08-01', 8),
('VoHiYo', 'http://emote.url/vohiyo', '2023-09-01', 9),
('TriHard', 'http://emote.url/trihard', '2023-10-01', 10);


INSERT INTO channel (channel_name, created_at, updated_at, end_at, user_id) VALUES
('GamingChannel1', '2023-01-15', '2023-01-20', '2023-06-15', 1),
('GamingChannel2', '2023-02-20', '2023-02-25', '2023-07-20', 2),
('GamingChannel3', '2023-03-25', '2023-03-30', '2023-08-25', 3),
('GamingChannel4', '2023-04-10', '2023-04-15', '2023-09-10', 4),
('GamingChannel5', '2023-05-05', '2023-05-10', '2023-10-05', 5),
('GamingChannel6', '2023-06-15', '2023-06-20', '2023-11-15', 6),
('GamingChannel7', '2023-07-20', '2023-07-25', '2023-12-20', 7),
('GamingChannel8', '2023-08-25', '2023-08-30', '2024-01-25', 8),
('GamingChannel9', '2023-09-30', '2023-10-05', '2024-02-29', 9), 
('GamingChannel10', '2023-11-05', '2023-11-10', '2024-03-05', 10);


INSERT INTO moderator (userName, granted_at, ended_at, channel_id) VALUES
('ModJean', '2023-01-20', '2023-06-20', 1),
('ModMarie', '2023-02-25', '2023-07-25', 2),
('ModPierre', '2023-03-30', '2023-08-30', 3),
('ModLucie', '2023-04-10', '2023-09-10', 4),
('ModDavid', '2023-05-15', '2023-10-15', 5),
('ModEmma', '2023-06-20', '2023-11-20', 6),
('ModSophie', '2023-07-25', '2023-12-25', 7),
('ModHugo', '2023-08-30', '2024-01-30', 8),
('ModChloé', '2023-09-05', '2024-02-05', 9),
('ModLucas', '2023-10-10', '2024-03-10', 10);


INSERT INTO channels_pts (created_at, channel_id) VALUES
('2023-01-22', 1),
('2023-02-27', 2),
('2023-04-01', 3),
('2023-05-10', 4),
('2023-06-15', 5),
('2023-07-20', 6),
('2023-08-25', 7),
('2023-09-30', 8),
('2023-11-05', 9),
('2023-12-10', 10);


INSERT INTO my_emotes (emote_name, emote_url, created_at, user_id) VALUES
('LUL', 'http://emote.url/lul', '2023-01-10', 1),
('Kreygasm', 'http://emote.url/kreygasm', '2023-02-15', 2),
('4Head', 'http://emote.url/4head', '2023-03-20', 3),
('DansGame', 'http://emote.url/dansgame', '2023-04-25', 4),
('ResidentSleeper', 'http://emote.url/residentsleeper', '2023-05-30', 5),
('VoHiYo', 'http://emote.url/vohiyo', '2023-07-05', 6),
('TriHard', 'http://emote.url/trihard', '2023-08-10', 7),
('NotLikeThis', 'http://emote.url/notlikethis', '2023-09-15', 8),
('KappaPride', 'http://emote.url/kappapride', '2023-10-20', 9),
('BibleThump', 'http://emote.url/biblethump', '2023-11-25', 10);


INSERT INTO badges (name, level, channel, description, created_at, badges_id) VALUES
('VIP', 3, 'GamingChannel1', 'Badge pour les VIP', '2023-01-05', 1),
('Fondateur', 1, 'GamingChannel2', 'Badge pour les fondateurs', '2023-02-10', 2),
('Modérateur', 2, 'GamingChannel3', 'Badge pour les modérateurs', '2023-03-15', 3),
('Membre', 1, 'GamingChannel4', 'Badge pour les membres', '2023-04-20', 4),
('Supporter', 2, 'GamingChannel5', 'Badge pour les supporters', '2023-05-25', 5),
('Subscriber', 3, 'GamingChannel6', 'Badge pour les abonnés', '2023-06-30', 6),
('Donateur', 4, 'GamingChannel7', 'Badge pour les donateurs', '2023-07-05', 7),
('Viewer', 1, 'GamingChannel8', 'Badge pour les spectateurs', '2023-08-10', 8),
('Follower', 2, 'GamingChannel9', 'Badge pour les followers', '2023-09-15', 9),
('MVP', 5, 'GamingChannel10', 'Badge pour les MVP', '2023-10-20', 10);


INSERT INTO streams (Title,Description, start_time,end_time, channel_id) VALUES
('Diffusion 1','battle field pov','2023-01-25 11:45:25','2023-01-25 12:00:05', 1),
('Got','games of thrones resumé','2023-02-28 09:30:45', '2023-02-28 11:10:50', 2),
('Ufc','ultimate fight last fight','2023-03-31 09:30:45', '2023-03-31 11:10:50', 3),
('Olympic games','olympic resume of today','2023-04-20 09:30:45', '2023-04-20 11:10:50', 4),
('My advice','music reaction','2023-05-25 09:10:45', '2023-05-25 11:10:50', 5),
('Maths ','revision de math','2023-06-30 08:30:45', '2023-06-30 11:50:50', 6),
('Maths 2','cours sur les probabilités','2023-07-15 07:30:45', '2023-07-15 11:10:50', 7),
('Sciences','sciences recap','2023-08-10 04:30:45', '2023-08-10 11:10:50', 8),
('Mario bross','cheatcode mario bros','2023-09-05 13:30:45', '2023-09-05 18:10:50', 9),
('OM/PSG','match psg-om','2023-10-30 20:30:45', '2023-10-30 23:45:50', 10);


INSERT INTO clips (title_clip, langue_clip, nb_vue_clip, duration_clip, stream_id) VALUES
('Clip1', 'français', 150, '00:01:30', 1),
('Clip2', 'français', 250, '00:02:00', 2),
('Clip3', 'français', 350, '00:03:00', 3),
('Clip4', 'français', 450, '00:01:45', 4),
('Clip5', 'français', 550, '00:02:15', 5),
('Clip6', 'français', 650, '00:02:30', 6),
('Clip7', 'français', 750, '00:02:45', 7),
('Clip8', 'français', 850, '00:03:15', 8),
('Clip9', 'français', 950, '00:03:30', 9),
('Clip10', 'français', 1050, '00:03:45', 10);


INSERT INTO recommended_channels (priority, created_at, channel_id) VALUES
(1, '2023-01-30', 1),
(2, '2023-02-28', 2),
(3, '2023-03-31', 3),
(4, '2023-04-30', 4),
(5, '2023-05-30', 5),
(6, '2023-06-30', 6),
(7, '2023-07-31', 7),
(8, '2023-08-31', 8),
(9, '2023-09-30', 9),
(10, '2023-10-31', 10);
































INSERT INTO collections (created_at, ended_at, channel_id)
VALUES ('2024-02-20', '2024-06-20', 1),
       ('2024-07-20', '2024-11-20', 2);


INSERT INTO campaigns (campain_name, start_date, end_date, user_id)
VALUES ('Charity Stream', '2024-04-01', '2024-04-30', 1),
       ('Summer Event', '2024-07-01', '2024-07-31', 2);


INSERT INTO statistics (created_at, updated_at, channel_id)
VALUES ('2024-01-05', '2024-02-05', 1),
       ('2024-05-05', '2024-06-05', 2);

-- Insert into extensions
INSERT INTO extensions (created_at, channel_id)
VALUES ('2024-03-01', 1),
       ('2024-09-01', 2);

-- Insert into ads
INSERT INTO ads (created_at, modified_at, channel_id)
VALUES ('2024-04-01', '2024-04-15', 1),
       ('2024-08-01', '2024-08-15', 2);

-- Insert into tickets
INSERT INTO tickets (created_at, ended_at, user_id)
VALUES ('2024-03-10', '2024-04-10', 1),
       ('2024-07-10', '2024-08-10', 2);

-- Insert into BanListStreamers
INSERT INTO BanListStreamers (banned_at, ended_at, channel_id)
VALUES ('2024-05-01', '2024-06-01', 1),
       ('2024-09-01', '2024-10-01', 2);

-- Insert into affiliated_partners
INSERT INTO affiliated_partners (created_at, ended_at, channel_id)
VALUES ('2024-02-05', '2024-05-05', 1),
       ('2024-07-05', '2024-10-05', 2);

-- Insert into twitch_partners
INSERT INTO twitch_partners (created_at, channel_id)
VALUES ('2024-03-10', 1),
       ('2024-08-10', 2);

-- Insert into contact
INSERT INTO contact (name, email, created_at, user_id)
VALUES ('Support', 'support@example.com', '2024-01-25', 1),
       ('Admin', 'admin@example.com', '2024-06-25', 2);

-- Insert into transaction
INSERT INTO transaction (created_at, ended_at, user_id)
VALUES ('2024-02-15', '2024-03-15', 1),
       ('2024-07-15', '2024-08-15', 2);

-- Insert into friends
INSERT INTO friends (frienshipId, established_at, ended_at, whispers_id)
VALUES (1, '2024-04-01', '2024-06-01', 1),
       (2, '2024-08-01', '2024-10-01', 2);

-- Insert into followers
INSERT INTO followers (nbrFollowers, followerTime, created_at, ended_at, followings_id)
VALUES ('1000', '6 months', '2024-03-20', '2024-09-20', 1),
       ('2000', '1 year', '2024-07-20', '2025-01-20', 2);

-- Insert into subs
INSERT INTO subs (nbrSubs, level, price, typeSub, totalTime, created_at, update_at, ended_at, channel_id, user_id)
VALUES (50, 1, 5, 'Monthly', '2024-03-01 10:00:00', '2024-03-01', '2024-04-01', '2024-05-01', 1, 1),
       (100, 2, 10, 'Yearly', '2024-07-01 15:00:00', '2024-07-01', '2024-08-01', '2024-09-01', 2, 2);

-- Insert into gift_subs
INSERT INTO gift_subs (id_gifter, nbr_gift_subs, level, price, created_at, updated_at, end_at, sub_id)
VALUES (1, 5, 1, 5, '2024-04-01', '2024-04-15', '2024-05-01', 1),
       (2, 10, 2, 10, '2024-08-01', '2024-08-15', '2024-09-01', 2);

-- Insert into banned_users
INSERT INTO banned_users (ban_id, reason, user_id, moderator_id)
VALUES (1, 'Spamming', 1, 1),
       (2, 'Inappropriate content', 2, 2);

-- Insert into my_clips
INSERT INTO my_clips (clip_url, created_at, ended_at, clips_id)
VALUES ('https://example.com/clip1.mp4', '2024-01-15', '2024-02-15', 1),
       ('https://example.com/clip2.mp4', '2024-05-15', '2024-06-15', 2);

-- Insert into connections
INSERT INTO connections (service, linked_at, ended_at, connections_id)
VALUES ('YouTube', '2024-02-20', '2024-04-20', 1),
       ('Twitch', '2024-06-20', '2024-08-20', 2);

-- Insert into wallet
INSERT INTO wallet (created_at, updated_at, balance, currency, sub_id)
VALUES ('2024-01-25', '2024-02-25', 100, 'USD', 1),
       ('2024-07-25', '2024-08-25', 200, 'USD', 2);

-- Insert into categories
INSERT INTO categories (name, description, created_at, categories_id)
VALUES ('Gaming', 'All about games', '2024-02-05', 1),
       ('Technology', 'Latest tech trends', '2024-07-05', 2);

-- Insert into sub_categories
INSERT INTO sub_categories (name, description, categories_id)
VALUES ('Action', 'Action-packed games', 1),
       ('Gadgets', 'Cool tech gadgets', 2);

-- Insert into tags
INSERT INTO tags (tag_name, description, created_at, channel_id)
VALUES ('No Commentary', 'Gameplay without commentary', '2024-03-01', 1),
       ('Live', 'Real-time streaming', '2024-08-01', 2);

-- Insert into live_channel
INSERT INTO live_channel (title, started_at, ended_at, stream_id)
VALUES ('Morning Stream', '2024-02-10', '2024-02-10', 1),
       ('Evening Stream', '2024-07-10', '2024-07-10', 2);

-- Insert into channel_clips
INSERT INTO channel_clips (id_clips, clip_url, created_at, clips_id)
VALUES (1, 'https://example.com/clip1.mp4', '2024-03-01', 1),
       (2, 'https://example.com/clip2.mp4', '2024-08-01', 2);

-- Insert into all_vids
INSERT INTO all_vids (title, start_time, end_time, stream_id)
VALUES ('Full Stream 1', '2024-02-15 10:00:00', '2024-02-15 12:00:00', 1),
       ('Full Stream 2', '2024-07-15 14:00:00', '2024-07-15 16:00:00', 2);

-- Insert into past_streams
INSERT INTO past_streams (title, start_time, end_time, all_vids_id)
VALUES ('Past Stream 1', '2024-02-16 10:00:00', '2024-02-16 12:00:00', 1),
       ('Past Stream 2', '2024-07-16 14:00:00', '2024-07-16 16:00:00', 2);

-- Insert into highlights
INSERT INTO highlights (title, created_at, all_vids_id)
VALUES ('Highlight 1', '2024-03-01', 1),
       ('Highlight 2', '2024-08-01', 2);

-- Insert into trending_streamers
INSERT INTO trending_streamers (_rank, timeWindow, created_at, all_vids_id)
VALUES (1, 'Week 1', '2024-02-20', 1),
       (2, 'Week 2', '2024-07-20', 2);

-- Insert into stream_chat
INSERT INTO stream_chat (live_id, message, sent_at, all_vids_id)
VALUES (1, 'Hello everyone!', '2024-02-10', 1),
       (2, 'Great stream!', '2024-07-10', 2);

-- Insert into EVOLUER
INSERT INTO EVOLUER (id_user, follower)
VALUES (1, 1),
       (2, 2);

-- Insert into MONTER
INSERT INTO MONTER (community_id, channel_id)
VALUES (1, 1),
       (2, 2);

-- Insert into CLASSIFIER
INSERT INTO CLASSIFIER (inventory_id, user_id)
VALUES (1, 1),
       (2, 2);
