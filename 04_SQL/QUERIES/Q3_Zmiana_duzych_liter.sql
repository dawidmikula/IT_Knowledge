SELECT
	concat(
        lcase( substring( klienci.imie_kl, 1, char_length(klienci.imie_kl)-1 ) ),
        ucase( substring( klienci.imie_kl, char_length(klienci.imie_kl)))
	) "imiE",
    concat(
        lcase( substring( klienci.nazwisko_kl, 1, char_length(klienci.nazwisko_kl)-1 ) ),
        ucase( substring( klienci.nazwisko_kl, char_length(klienci.nazwisko_kl)))
	) "nazwiskO"

FROM klienci
