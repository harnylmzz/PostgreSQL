<film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?>

SELECT COUNT(*) FROM film
WHERE length >
(SELECT AVG (length)FROM film );



<film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?>

SELECT COUNT(*) FROM film
WHERE rental_rate = 
(SELECT MAX(rental_rate) FROM film);



<film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.>

SELECT COUNT(*) FROM film
WHERE rental_rate = ANY

(SELECT MIN(rental_rate) FROM film)
AND replacement_cost = ANY

(SELECT MIN(replacement_cost) FROM film);



<payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.>

SELECT customer.first_name, customer.last_name FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id
WHERE payment.amount =

(SELECT MAX (amount) FROM payment);

