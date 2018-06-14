DROP TABLE artiste_type_show;
DROP TABLE artiste_type;

create table cast_member
(
  id int auto_increment primary key,
  artist_id int not null,
  type_id int not null,
  show_id int not null,
  constraint artiste_type_ibfk_1 foreign key (artist_id) references artists (id) ,
  constraint artiste_type_ibfk_2 foreign key (type_id) references types (id),
  constraint artiste_type_ibfk_3 foreign key (show_id) references shows (id)
) charset=latin1;

create index artist_id
  on cast_member (artist_id)
;

create index type_id
  on cast_member (type_id)
;

create index show_id
  on cast_member (show_id)
;

INSERT INTO `cast_member` (`id`, `artist_id`, `type_id`, `show_id`) VALUES
  (1, 1, 1, 1),
  (2, 1, 2, 1),
  (3, 1, 3, 1),
  (4, 2, 1, 1),
  (5, 2, 2, 1),
  (6, 3, 1, 1),
  (7, 4, 2, 2),
  (8, 5, 3, 2),
  (9, 6, 3, 2),
  (10, 7, 3, 2),
  (11, 8, 3, 2),
  (12, 9, 3, 2),
  (13, 10, 1, 3),
  (14, 10, 3, 3),
  (15, 11, 2, 3),
  (16, 12, 1, 3),
  (17, 12, 3, 3),
  (18, 13, 1, 3),
  (19, 13, 3, 4),
  (20, 14, 1, 4),
  (21, 15, 2, 4),
  (22, 16, 3, 4),
  (23, 17, 3, 4);

UPDATE users SET password = '$2a$10$NAjUdP5hDv8If7qAvBLTAOmUk3dMVCrYovqTeO144vE7c4izCxBly' WHERE id = 1; -- admin
UPDATE users SET password = '$2a$10$nGegBelpICcmJja1gGtBD.PlELtS8uaVJtVcB7pAJXAa9AZ/9GlHi' WHERE id = 2; -- membre

ALTER TABLE locality MODIFY COLUMN postal_code VARCHAR(7) NOT NULL;