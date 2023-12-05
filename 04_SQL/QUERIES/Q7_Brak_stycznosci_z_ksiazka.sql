SELECT
	klienci.imie_kl Imię,  klienci.nazwisko_kl Nazwisko, ksiazki.pisarz, ksiazki.tytul Tytuł, "klient" Rola 
FROM klienci
	INNER JOIN biblioteka ON biblioteka.id_klienta = klienci.id_kl
    INNER JOIN dane ON dane.id_wyp = biblioteka.id_wyp
    INNER JOIN ksiazki ON ksiazki.id_ksiazki = dane.id_ksiazki
WHERE ksiazki.tytul = "1984"

UNION

SELECT
	pracownicy.imie_prac, pracownicy.nazwisko_prac, ksiazki.pisarz, ksiazki.tytul, "pracownik"
FROM pracownicy
	INNER JOIN biblioteka ON biblioteka.id_pracownika = pracownicy.id_prac
    INNER JOIN dane ON dane.id_wyp = biblioteka.id_wyp
    INNER JOIN ksiazki ON ksiazki.id_ksiazki = dane.id_ksiazki
WHERE ksiazki.tytul = "1984"


