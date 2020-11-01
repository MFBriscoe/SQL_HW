SELECT tr.date, tr.amount, cc.card, ch.id
FROM transaction AS tr
JOIN credit_card AS cc ON cc.card=tr.card
JOIN card_holder AS ch ON ch.id=cc.id_card_holder
WHERE ch.id IN (2, 18)
ORDER BY tr.date;

select mc,t.id_merchant, t.amount, t.date
from transaction as t
JOIN merchant AS m ON m.id=t.id_merchant
JOIN merchant_category AS mc ON mc.id=m.id_merchant_category
where t.date::date BETWEEN date '2018-01-01' AND date '2019-01-01'
	AND t.date::time BETWEEN time '07:00:00' AND '09:00:00'
order by t.amount desc
limit 100;

select t.card, t.amount, t.date, m.name, mc.name
FROM transaction as t
RIGHT JOIN merchant as m on m.id=t.id_merchant
RIGHT JOIN merchant_category as mc on mc.id=m.id_merchant_category
where t.amount < 2
order by t.card desc
limit 100;

SELECT tr.date, tr.amount, cc.card, ch.id
FROM transaction AS tr
JOIN credit_card AS cc ON cc.card=tr.card
JOIN card_holder AS ch ON ch.id=cc.id_card_holder
WHERE ch.id IN (25)  AND (date BETWEEN '2018-01-01'AND '2018-07-01')
ORDER BY tr.date;
