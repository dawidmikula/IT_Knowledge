SELECT
	klienci.email_kl email,
    if(klienci.email_kl like "%@wp.pl",
		REPLACE(klienci.email_kl,"wp.pl","example.com"),
    	REPLACE(klienci.email_kl,"example.com","wp.pl")
    ) "lipa"
FROM klienci
WHERE klienci.email_kl like "%@wp.pl" or klienci.email_kl LIKE "%@example.com";