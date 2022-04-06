select name,composer FROM tracks;
SELECT * FROM albums;
SELECT *FROM tracks;
SELECT DISTINCT AlbumId,MediaTypeId FROM tracks;

SELECT name FROM tracks WHERE Composer = 'Jimi Hendrix';
/* invoices tablosunda Total değeri 10$ dan büyük olan faturaların tüm bilgilerini 
sorgulayiniz */
SELECT * FROM invoices WHERE total>10;
/*===================================================
LIMIT
====================================================*/
/*invoices tablosunda Total değeri 10$'dan büyük olan 
ilk 4 kayıt'ın InvoiceId,InvoiceDate ve total 
bilgilerini sorgulayiniz */
SELECT * FROM invoices WHERE total>10 LIMIT 4;
/*invoices tablosunda Total değeri 10$'dan büyük olan kayıtlardan işlem tarihi 
(InvoiceDate) en yeni olan 10 kaydın tüm bilgilerini listeyiniz */
SELECT * FROM invoices WHERE total>10 ORDER by InvoiceDate DESC LIMIT 10;

/* invoices tablosundan CustomerId, InvoiceDate, BillingCity, total 
 değerlerini sorgulayınız. BillingCity artan sırayla ve total değerlerini 
 azalan sırayla sıralayınız.*/
 SELECT CustomerId, InvoiceDate, BillingCity, total
 FROM invoices
 ORDER BY BillingCity ASC, total DESC;
 
 SELECT * FROM invoices WHERE BillingCountry <> 'USA' ORDER BY total ASC;
 
 /* invoices tablosunda fatura tarihi (InvoiceDate) 01-01-2012 ile 02-01-2013 
tarihleri arasındaki faturaların tüm bilgilerini listeleyiniz */ 
SELECT *
FROM invoices
where InvoiceDate >= "2012-01-01" and InvoiceDate <= "2013-01-02 00:00:00";

/* invoices tablosunda fatura tarihi (InvoiceDate) 2009 ila 2011 tarihleri arasındaki
en yeni faturayı listeleyen sorguyu yazınız */ 
SELECT *
FROM invoices
WHERE InvoiceDate  BETWEEN '2009-01-01' AND '2012-12-31 00:00:00'
ORDER BY InvoiceDate DESC
LIMIT 1;
/*===================================================
IN
====================================================*/
/* customers tablosunda Belgium, Norway veya  Canada ,USA  ülkelerinden sipariş veren
müşterilerin FirstName, LastName, country bilgilerini listeyiniz	*/
SELECT FirstName, LastName, country
FROM customers
WHERE country IN ("Norvay","Belgium","Canada","USA" );

