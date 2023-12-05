SELECT 
	pracownicy.nazwisko_prac,
    biblioteka.id_wyp
FROM pracownicy
	LEFT JOIN biblioteka ON pracownicy.id_prac = biblioteka.id_pracownika
WHERE biblioteka.id_wyp IS NULL
ORDER BY biblioteka.id_wyp ASC