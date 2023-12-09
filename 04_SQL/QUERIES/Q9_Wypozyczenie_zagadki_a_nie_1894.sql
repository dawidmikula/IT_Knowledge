SELECT
klienci.imie_kl Imie,
klienci.nazwisko_kl Nazwisko
FROM klienci
	INNER JOIN biblioteka ON biblioteka.id_klienta = klienci.id_kl
    INNER JOIN dane ON dane.id_wyp = biblioteka.id_wyp
    INNER JOIN ksiazki ON ksiazki.id_ksiazki = dane.id_ksiazki
WHERE ksiazki.tytul = "Zagadka trzech kartofli"
EXCEPT
SELECT
klienci.imie_kl,
klienci.nazwisko_kl
FROM klienci
INNER JOIN biblioteka ON biblioteka.id_klienta = klienci.id_kl
    INNER JOIN dane ON dane.id_wyp = biblioteka.id_wyp
    INNER JOIN ksiazki ON ksiazki.id_ksiazki = dane.id_ksiazki
WHERE ksiazki.tytul="1894"