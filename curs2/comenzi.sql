CREATE SCHEMA `universitate2023` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `universitate2023`.`uitlizatori` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(45) NOT NULL,
  `prenume` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `telefon` CHAR(10) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SELECT * FROM `student` WHERE data_nasterii >=1996-03-01
SELECT * FROM `student`WHERE year(data_nastere) >= '1996';
-- SELECT * FROM `student`WHERE year(data_nastere) >= '1993'; AND year(data_nastere) <= '1995'
SELECT * FROM `student` WHERE year(data_nastere) BETWEEN '1993' and '1995';

-- SELECT * FROM `profesor` WHERE grad_didactic != 'III';
-- SELECT * FROM `profesor` WHERE grad_didactic = 'I' OR  grad_didactic= 'II'
SELECT * FROM `profesor` WHERE grad_didactic IN ('I', 'II')

SELECT * FROM cursuri WHERE an =2 AND semestru=2;
SELECT * FROM `student` WHERE prenume LIKE 'ion%'

SELECT * FROM `student` WHERE DATE_FORMAT(data_nastere, '%m-%d') = '09-21';

SELECT *, bursa*12 AS bursa_anuala FROM `student` WHERE bursa *12 >= 4000;

SELECT * FROM `student` ORDER BY nume ASC, prenume DESC;

SELECT * FROM `student`ORDER BY data_nastere DESC  LIMIT 10, 5;

SELECT c.id.curs, c.titlu_curs, n.valoare FROM `cursuri` AS c NATURAL JOIN 
note AS m;

SELECT * FROM student CROSS JOIN note WHERE prenume='Andrei';

SELECT profesor.nume, profesor.prenume, cursuri.titlu_curs, note.valoare, note.id_curs * FROM `profesor`
LEFT JOIN didactic ON profesor.id = didactic.id_prof
INNER JOIN cursuri ON cursuri.id_curs = didactic.id_curs
LEFT JOIN note ON cursuri.id_curs = note.id_curs
WHERE profesor.id =6 AND note.valoare IS NOT NULL

SELECT * FROM `profesor` AS p LEFT JOIN didactic AS d ON p.id = d.id_prof;

UPDATE `didactic` SET id_prof = 11 WHERE id_prof;

SELECT s.nume, s.prenume FROM `note` AS n INNER JOIN student AS s ON n.id_student = s.id GROUP by n.id_student;

SELECT s.nume, s.prenume, n.valoare, AVG(n.valoare) FROM `student` AS s LEFT JOIN note AS n ON s.id = n.id_student;
WHERE s.id =111 GROUP BY s.id;