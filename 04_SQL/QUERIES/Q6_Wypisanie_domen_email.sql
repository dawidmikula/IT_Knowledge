SELECT DISTINCT
	substring(klienci.email_kl, instr (klienci.email_kl, "@") + 1 ) "domena"
FROM klienci