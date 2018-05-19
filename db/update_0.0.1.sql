# Changes to pass Hibernate validation. todo: See if I could avoid some of these changes

RENAME TABLE artiste_type_show TO artiste_type_shows;

ALTER TABLE artiste_type_shows
  CHANGE `artiste_type_id` `cast_member_id` int(11);

ALTER TABLE artiste_type_shows
  CHANGE `show_id` `shows_id` int(11);