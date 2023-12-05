SELECT 
	klienci.imie_kl, klienci.nazwisko_kl,
    COUNT(biblioteka.id_wyp) "ile"
FROM klienci
	INNER JOIN biblioteka ON biblioteka.id_klienta = klienci.id_kl
GROUP BY biblioteka.id_klienta
HAVING ile = ( SELECT  
        	COUNT( biblioteka.id_klienta) "maks" 
		FROM klienci 
        	INNER JOIN biblioteka ON biblioteka.id_klienta = klienci.id_kl
		GROUP by biblioteka.id_klienta 
		ORDER By maks desc 
		Limit 1)