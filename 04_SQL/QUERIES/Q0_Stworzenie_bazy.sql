-- Stworzenie tabeli "klienci" oraz wypełnienie jej danymi

CREATE TABLE `lib`.`klienci` (
  `id_kl` INT NOT NULL AUTO_INCREMENT,
  `imie_kl` VARCHAR(45) NULL,
  `nazwisko_kl` VARCHAR(45) NULL,
  `miejscowosc_kl` VARCHAR(45) NULL,
  `email_kl` VARCHAR(45) NULL,
  PRIMARY KEY (`id_kl`));

INSERT INTO `lib`.`klienci` (`imie_kl`, `nazwisko_kl`, `miejscowosc_kl`, `email_kl`) 
VALUES 
('Anna', 'Kowalska', 'Warszawa', 'anna@example.com'),
('Piotr', 'Nowak', 'Kraków', 'piotr@example.com'),
('Magdalena', 'Wiśniewska', 'Gdańsk', 'magda@example.com'),
('Kamil', 'Jankowski', 'Wrocław', 'kamil@example.com'),
('Karolina', 'Kaczmarek', 'Poznań', 'karolina@example.com'),
('Marcin', 'Lewandowski', 'Łódź', 'marcin@example.com'),
('Aleksandra', 'Dąbrowska', 'Szczecin', 'ola@example.com'),
('Michał', 'Kowalczyk', 'Bydgoszcz', 'michal@example.com'),
('Natalia', 'Zielińska', 'Katowice', 'natalia@example.com'),
('Łukasz', 'Szymański', 'Gdynia', 'lukasz@example.com'),
('Dominika', 'Wojcik', 'Częstochowa', 'dominika@example.com'),
('Adam', 'Grabowski', 'Rzeszów', 'adam@example.com'),
('Katarzyna', 'Pawlak', 'Toruń', 'kasia@example.com'),
('Rafał', 'Michalski', 'Białystok', 'rafal@example.com'),
('Ewa', 'Zając', 'Opole', 'ewa@example.com');

-- Stworzenie tabeli "biblioteka" oraz wypełnienie jej danymi

CREATE TABLE `lib`.`biblioteka` (
  `id_wyp` INT NOT NULL AUTO_INCREMENT,
  `data_wyp` VARCHAR(45) NULL,
  `data_zw` VARCHAR(45) NULL,
  `id_klienta` VARCHAR(45) NULL,
  `id_pracownika` VARCHAR(45) NULL,
  PRIMARY KEY (`id_wyp`));

INSERT INTO `lib`.`biblioteka` (`data_wyp`, `data_zw`, `id_klienta`, `id_pracownika`) 
VALUES 
('2023-01-01', '2023-01-10', 1, 1),
('2023-01-02', '2023-01-11', 2, 2),
('2023-01-03', '2023-01-12', 3, 3),
('2023-01-04', '2023-01-13', 4, 4),
('2023-01-05', '2023-01-14', 5, 5),
('2023-01-06', '2023-01-15', 6, 1),
('2023-01-07', '2023-01-16', 7, 2),
('2023-01-08', '2023-01-17', 8, 3),
('2023-01-09', '2023-01-18', 9, 4),
('2023-01-10', '2023-01-19', 10, 5),
('2023-01-11', '2023-01-20', 11, 1),
('2023-01-12', '2023-01-21', 12, 2),
('2023-01-13', '2023-01-22', 13, 3),
('2023-01-14', '2023-01-23', 14, 4),
('2023-01-15', '2023-01-24', 15, 5),
('2023-01-16', '2023-01-25', 1, 1),
('2023-01-17', '2023-01-26', 2, 2),
('2023-01-18', '2023-01-27', 3, 3),
('2023-01-19', '2023-01-28', 4, 4),
('2023-01-20', '2023-01-29', 5, 5),
('2023-01-21', '2023-01-30', 6, 1),
('2023-01-22', '2023-01-31', 7, 2),
('2023-01-23', '2023-02-01', 8, 3),
('2023-01-24', '2023-02-02', 9, 4),
('2023-01-25', '2023-02-03', 10, 5),
('2023-01-26', '2023-02-04', 11, 1),
('2023-01-27', '2023-02-05', 12, 2),
('2023-01-28', '2023-02-06', 13, 3),
('2023-01-29', '2023-02-07', 14, 4),
('2023-01-30', '2023-02-08', 15, 5),
('2023-02-01', '2023-02-09', 1, 1),
('2023-02-02', '2023-02-10', 2, 2),
('2023-02-03', '2023-02-11', 3, 3),
('2023-02-04', '2023-02-12', 4, 4),
('2023-02-05', '2023-02-13', 5, 5),
('2023-02-06', '2023-02-14', 6, 1),
('2023-02-07', '2023-02-15', 7, 2),
('2023-02-08', '2023-02-16', 8, 3),
('2023-02-09', '2023-02-17', 9, 4),
('2023-02-10', '2023-02-18', 10, 5),
('2023-02-11', '2023-02-19', 11, 1),
('2023-02-12', '2023-02-20', 12, 2),
('2023-02-13', '2023-02-21', 13, 3),
('2023-02-14', '2023-02-22', 14, 4),
('2023-02-15', '2023-02-23', 15, 5),
('2023-02-16', '2023-02-24', 1, 1),
('2023-02-17', '2023-02-25', 2, 2),
('2023-02-18', '2023-02-26', 3, 3),
('2023-02-19', '2023-02-27', 4, 4),
('2023-02-20', '2023-02-28', 5, 5),
('2023-02-21', '2023-03-01', 6, 1),
('2023-02-22', '2023-03-02', 7, 2),
('2023-02-23', '2023-03-03', 8, 3),
('2023-02-24', '2023-03-04', 9, 4),
('2023-02-25', '2023-03-05', 10, 5),
('2023-02-26', '2023-03-06', 11, 1),
('2023-02-27', '2023-03-07', 12, 2),
('2023-02-28', '2023-03-08', 13, 3),
('2023-03-01', '2023-03-09', 14, 4),
('2023-03-02', '2023-03-10', 15, 5);

-- Stworzenie tabeli "dane" oraz wypełnienie jej danymi

CREATE TABLE `lib`.`dane` (
  `id_wyp` INT NULL,
  `id_ksiazki` INT NULL,
  `ilosc_dob` INT NULL,
  `cena_dob` INT NULL);

INSERT INTO `lib`.`dane` (`id_wyp`, `id_ksiazki`, `ilosc_dob`, `cena_dob`) 
VALUES 
(1, 1, 7, 5),
(2, 2, 5, 6),
(3, 3, 3, 4),
(4, 4, 6, 7),
(5, 5, 4, 5),
(6, 6, 8, 6),
(7, 7, 5, 5),
(8, 8, 6, 7),
(9, 9, 4, 4),
(10, 10, 7, 6),
(11, 1, 6, 5),
(12, 2, 4, 6),
(13, 3, 5, 4),
(14, 4, 7, 7),
(15, 5, 3, 5),
(16, 6, 8, 6),
(17, 7, 6, 5),
(18, 8, 5, 7),
(19, 9, 7, 4),
(20, 10, 4, 6),
(21, 1, 5, 5),
(22, 2, 6, 6),
(23, 3, 4, 4),
(24, 4, 7, 7),
(25, 5, 5, 5),
(26, 6, 6, 6),
(27, 7, 3, 5),
(28, 8, 8, 7),
(29, 9, 4, 4),
(30, 10, 5, 6),
(31, 1, 7, 5),
(32, 2, 5, 6),
(33, 3, 3, 4),
(34, 4, 6, 7),
(35, 5, 4, 5),
(36, 6, 8, 6),
(37, 7, 5, 5),
(38, 8, 6, 7),
(39, 9, 4, 4),
(40, 10, 7, 6),
(41, 1, 6, 5),
(42, 2, 4, 6),
(43, 3, 5, 4),
(44, 4, 7, 7),
(45, 5, 3, 5),
(46, 6, 8, 6),
(47, 7, 6, 5),
(48, 8, 5, 7),
(49, 9, 7, 4),
(50, 10, 4, 6);

-- Stworzenie tabeli "ksiazki" oraz wypełnienie jej danymi

CREATE TABLE `lib`.`ksiazki` (
  `id_ksiazki` INT NOT NULL AUTO_INCREMENT,
  `pisarz` VARCHAR(45) NULL,
  `tytul` VARCHAR(45) NULL,
  PRIMARY KEY (`id_ksiazki`));

INSERT INTO `lib`.`ksiazki` (`pisarz`, `tytul`) 
VALUES 
('George Orwell', '1984'),
('J.K. Rowling', 'Harry Potter i Kamień Filozoficzny'),
('F. Scott Fitzgerald', 'Wielki Gatsby'),
('Harper Lee', 'Zabić drozda'),
('J.R.R. Tolkien', 'Władca Pierścieni: Drużyna Pierścienia'),
('Jane Austen', 'Duma i uprzedzenie'),
('Gabriel Garcia Marquez', 'Sto lat samotności'),
('Leo Tolstoy', 'Wojna i pokój'),
('Markus Zusak', 'Złodziejka książek'),
('Agatha Christie', 'Zagadka trzech kartofli'),
('Henryk Sienkiewicz', 'Quo Vadis');

-- Stworzenie tabeli "pracownicy" oraz wypełnienie jej danymi

CREATE TABLE `lib`.`pracownicy` (
  `id_prac` INT NOT NULL AUTO_INCREMENT,
  `imie_prac` VARCHAR(45) NULL,
  `nazwisko_prac` VARCHAR(45) NULL,
  `miasto_prac` VARCHAR(45) NULL,
  PRIMARY KEY (`id_prac`));

INSERT INTO `lib`.`pracownicy` (`imie_prac`, `nazwisko_prac`, `miasto_prac`) 
VALUES 
('Jan', 'Kowalski', 'Warszawa'),
('Anna', 'Nowak', 'Kraków'),
('Piotr', 'Wiśniewski', 'Gdańsk'),
('Katarzyna', 'Jankowska', 'Wrocław'),
('Marcin', 'Kaczmarek', 'Poznań');