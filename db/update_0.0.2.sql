DROP TABLE IF EXISTS category;
CREATE TABLE category
(
  id int auto_increment primary key,
  name varchar(10) not null
) charset=latin1;

INSERT INTO category
(id, name)
VALUES
(1, 'inconnue'),
(2, 'Musical'),
(3, 'Play'),
(4, 'Opera'),
(5, 'Ballet');

ALTER TABLE shows
  ADD COLUMN category_id int NULL DEFAULT 1,
  ADD CONSTRAINT FK_SHOWS_CATEGORY FOREIGN KEY (category_id) REFERENCES category(id);