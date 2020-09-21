'Examine databases'
SELECT * FROM Customer
SELECT * FROM Product
SELECT * FROM Receipt
SELECT * FROM ReceiptProduct LIMIT 100

'Group by country'
SELECT country, count(*) FROM Customer GROUP BY Country

'Select country & receipt_id (join tables)'
SELECT country, receipt_id
  FROM [Receipt] JOIN Customer
    ON [Receipt].customer_id = customer.id

'Count how many distinct countries, manufacturers and categories exist'
SELECT count(DISTINCT country) FROM Customer;
SELECT count(DISTINCT manufacturer) FROM Product;
SELECT count(DISTINCT category) FROM Product;

'Average country count'
SELECT AVG(count(country)) as int FROM Customer;

'Identify individual customer'
SELECT customer_id FROM Receipt WHERE customer_id=35827645139799;

'CompanyName'
SELECT * FROM CompanyNameAR;
SELECT * FROM CompanyNameOrder;

'Select distinct potential clients'
SELECT DISTINCT merchant_id FROM CompanyNameAR;

SELECT merchant_id,
  FROM CompanyNameAR
 WHERE target = "NULL"
 GROUP BY sales_agent
 ORDER BY AVG(close_value) DESC;