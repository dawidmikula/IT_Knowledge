SELECT 
	concat ( 
        	if (
                char_length(ksiazki.pisarz)<=3, 
                ucase(ksiazki.pisarz), 
                concat(ucase(left(ksiazki.pisarz,1)), substring(ksiazki.pisarz,2))
            ),
       	", " ,
        	
       		 if (
               	char_length(ksiazki.tytul)<=3,
                ucase(ksiazki.tytul),
                concat(ucase(left(ksiazki.tytul,1)),substring(ksiazki.tytul,2))
        	)
    ) 'Pisarz i Tytuł',
   
    concat ( 
        	COUNT(dane.id_ksiazki),
            " ",
            CASE WHEN COUNT(dane.id_ksiazki) = 1 THEN "raz" ELSE	"razy" END
    ) "Ilosć" 

FROM ksiazki
	LEFT JOIN dane ON ksiazki.id_ksiazki=dane.id_ksiazki
GROUP BY dane.id_ksiazki
ORDER BY COUNT(dane.id_ksiazki) DESC;

