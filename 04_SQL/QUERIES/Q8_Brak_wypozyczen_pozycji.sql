SELECT *
FROM ksiazki
WHERE id_ksiazki NOT IN ( SELECT 
                                 id_ksiazki
                                 FROM dane
                                 WHERE id_ksiazki IS NOT NULL)