CREATE TABLE `students` (
  `id` primary,
  `class_id` int,
  `section_id` int,
  `name` varchar(255),
  `email` varchar(255),
  `adress` varchar(255),
  `phone_number` varchar(255)
);

CREATE TABLE `classes` (
  `id` primary,
  `name` varchar(255)
);

CREATE TABLE `sections` (
  `id` primary,
  `class_id` int,
  `name` varchar(255)
);

ALTER TABLE `students` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

ALTER TABLE `students` ADD FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

ALTER TABLE `sections` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);
