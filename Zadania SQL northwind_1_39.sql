/* -- Zadanie 1 Wyświetl wszystkie dane o pracownikach.
SELECT 
    *
FROM
    employees; 
*/
/* -- Zadanie 2 Wyświetl kod i nazwę wszystkich produktów. 
SELECT 
    product_code, product_name
FROM
    products;
*/
/* -- Zadanie 3 Wyświetl wszystkie dane adresowe dostawców. 
SELECT 
    address,
    city,
    state_province,
    zip_postal_code,
    country_region
FROM
    suppliers; 
*/
/* -- Zadanie 4 Wyświetl wszystkie dane o pracownikach, którzy mieszkają w Redmond. 
SELECT 
    *
FROM
    employees
WHERE
    city = 'Redmond';
*/
/* -- Zadanie 5 Wyświetl kod, nazwę i kategorię wszystkich produktów, które nie należą do kategorii Napoje. 
SELECT 
    product_code, product_name, category
FROM
    products
WHERE
    category NOT LIKE 'Beverages';
*/
/* -- Zadanie 6 Wyświetl wszystkie dane produktów, których koszt zakupu jest większy niż 12.0000. 
SELECT 
    *
FROM
    products
WHERE
    standard_cost > 12.0000;
*/
/* -- Zadanie 7 Wyświetl miasto, adres dostawy i opłatę za przewóz zamówienia, którego opłata za przewóz mieści
się w przedziale 20.0000 a 78.1223. 
SELECT 
    ship_city, ship_address, shipping_fee
FROM
    orders
WHERE
    shipping_fee BETWEEN 20.0000 AND 78.1223;
*/
/* -- Zadanie 8 Wyświetl wszystkie informacje o produktach, które mają określoną minimalną liczbę zamówienia.  
SELECT 
    *
FROM
    products
WHERE
    minimum_reorder_quantity IS NOT NULL;
*/
/* -- Zadanie 9 Wyświetl wszystkie informacje o produktach, które mają określona minimalną liczbę zamówienia i
ich koszt jest mniejszy niż 10.0000. 
SELECT 
    *
FROM
    products
WHERE
    minimum_reorder_quantity IS NOT NULL
        AND standard_cost < 10.0000;
*/
/* -- Zadanie 10 Wyświetl imię, nazwisko i miasto zamieszkania pracowników, których miasto zamieszkania kończy
się na nd. 
SELECT 
    first_name, last_name, city
FROM
    employees
WHERE
    city LIKE '%nd';
*/
/* -- Zadanie 11 Wyświetl imię, nazwisko i miasto zamieszkania pracowników, których miasto zamieszkania kończy
się na nd i nie jest to Redmond. 
SELECT 
    first_name, last_name, city
FROM
    employees
WHERE
    city LIKE '%nd'
        AND city NOT LIKE 'Redmond'; 
 -- ew. AND city <> 'Redmond' */
/* -- Zadanie 12 Wyświetl informacje o klientach, którzy nie są menedżerami. 
SELECT 
    *
FROM
    customers
WHERE
    job_title NOT LIKE '%Manager%';
*/
/* -- Zadanie 13 Wyświetl informacje o klientach, których imię zaczyna się na J lub nazwisko zawiera literę o i są
menedżerami.  
SELECT 
    *
FROM
    customers
WHERE
    (first_name LIKE 'J%'
        OR last_name LIKE '%o%')
        AND job_title LIKE '%manager%';
*/
/* -- Zadanie 14 Wyświetl informacje o produktach, których id dostawcy równa się 4 lub 6 lub 7. 
SELECT 
    *
FROM
    products
WHERE
    supplier_ids = 4 OR supplier_ids = 6
        OR supplier_ids = 7;
-- albo: WHERE supplier_ids IN (4, 6, 7)
*/
/* -- Zadanie 15 Wyświetl imię, nazwisko i miasto zamieszkania pracowników, których miasto zamieszkania to
Redmond. Wyniki posortuj od Z do A względem imienia. 
SELECT 
    first_name, last_name, city
FROM
    employees
WHERE
    city = 'Redmond'
ORDER BY first_name DESC;
*/
/* -- Zadanie 16 Zaprezentuj wszystkie produkty posortowane od najmniejszej ceny zakupu (standard_cost). 
SELECT 
    *
FROM
    products
ORDER BY standard_cost ASC;
 */
/* -- Zadanie 17 Zaprezentuj wszystkie produkty posortowane od najmniejszej ceny zakupu (standard_cost) i
największej ceny sprzedaży (list_price). 
SELECT 
    *
FROM
    products
ORDER BY standard_cost ASC , list_price DESC;
 */
/* -- Zadanie 18 Podaj listę zawodów (nie mogą się powtarzać), jakie posiadają nasi klienci. 
SELECT DISTINCT
    job_title
FROM
    customers;
*/
/* -- Zadanie 19 Wyświetl listę kategorii produktów, które posiadamy w bazie (nie mogą się powtarzać). Posortuj po
nazwie kategorii malejąco. 
SELECT DISTINCT
    category
FROM
    products
ORDER BY category DESC;
*/
/* -- Zadanie 20 Zaprezentuj raport dla dyrekcji, który będzie zawierał następujące kolumny: Imię_Pracownika,
Nazwisko_Pracownika, Miasto. W raporcie umieść tylko pracowników z Seattle. 
SELECT 
    first_name AS Imię_Pracownika,
    last_name AS Nazwisko_Pracownika,
    city AS Miasto
FROM
    employees
WHERE
    city = 'Seattle';
*/
/* -- Zadanie 21 Przedstaw przełożonemu raport, który będzie zawierał miasto, adres dostawy i opłatę za przewóz
zamówienia, którego opłata za przewóz mieści się w przedziale 19.1256 a 78.1999. 
SELECT 
    ship_city AS miasto,
    ship_address AS adres_dostawy,
    shipping_fee AS opłata_za_przewóz
FROM
    orders
WHERE
    shipping_fee BETWEEN 19.1256 AND 78.1999;
    */
/* -- Zadanie 22. Zlicz liczbę wszystkich zamówień. 
SELECT 
    COUNT(*)
FROM
    orders; */
/* -- Zadanie 23. Zlicz liczbę wszystkich zamówień opłaconych kartami kredytowymi. 
SELECT 
    COUNT(*)
FROM
    orders
WHERE
    payment_type = 'Credit Card';
*/
/* -- Zadanie 24. Zlicz liczbę wszystkich nieopłaconych zamówień. 
SELECT COUNT(*)
FROM
    orders
WHERE
    paid_date IS NULL; 
-- LUB
-- SELECT count(*)
-- FROM orders
-- WHERE payment_type IS NULL;
*/
/* -- Zadanie 25 Wyświetl maksymalną opłatę za transport zamówienia. 
SELECT 
    MAX(shipping_fee)
FROM
    orders;
*/
/* -- Zadanie 26. Jaką wartość ma najtańszy produkt od dostawcy ID = 1. 
SELECT 
    MIN(standard_cost)
FROM
    products
WHERE
    supplier_ids = 1;
-- NIE list_price, bo to chyba ceny katalogowe, rzeczywista cena jest niższa 
*/
/* -- Zadanie 27. Ile wynosi średnia opłata za przesyłkę w złożonych zamówieniach, uwzględniając tylko opłatę
większą niż 0. 
SELECT 
    AVG(shipping_fee)
FROM
    orders
WHERE
    shipping_fee > 0;
*/
/* -- Zadanie 28. Ile łącznie zamówiono produktu Northwind Traders Coffee (id=43). 
SELECT 
    SUM(quantity)
FROM
    order_details
WHERE
    product_id = 43;
*/
/* -- Zadanie 29. Wyświetl minimalny koszt produktu w danej kategorii. 
SELECT 
    category, MIN(standard_cost)
FROM
    products
GROUP BY category;
*/
/* -- Zadanie 30. Wskaż, jakie zawody wykonują klienci oraz ile osób zadeklarowało dany zawód. 
SELECT 
    job_title, COUNT(*)
FROM
    customers
GROUP BY job_title; 
-- LUB np.
-- SELECT count(job_title), job_title FROM customers group by job_title;
*/
/* -- Zadanie 31. Wyświetl wszystkie dane produktu oraz dane firmy, która go dostarcza. 
SELECT 
    *
FROM
    products
        JOIN
    suppliers ON products.supplier_ids = suppliers.id;
*/
/* -- Zadanie 32. Wyświetl nazwę produktu i nazwę firmy, która go dostarcza. Posortuj po nazwie firmy od A do Z. 
SELECT 
    product_name, company
FROM
    products
        JOIN
    suppliers ON products.supplier_ids = suppliers.id
ORDER BY company ASC;
*/
/* -- Zadanie 33. Wyświetl dane klientów (imię, nazwisko, adres, miasto, kraj), którzy nie dokonali jeszcze płatności
za zamówienie. 
SELECT 
    first_name, last_name, address, city, country_region
FROM
    customers
        JOIN
    orders ON customers.id = orders.customer_id
WHERE
    payment_type IS NULL;
*/
/* -- Zadanie 34. Przygotuj raport, który zawiera wszystkie dane o zamówieniach i firmach, które dostarczają dane zamówienie. Raport powinien zawierać wszystkie zamówienia wraz z tymi bez określonego jeszcze dostawcy. 
SELECT 
    *
FROM
    orders
        LEFT JOIN
    shippers ON orders.shipper_id = shippers.id;
*/
 /* -- Zadanie 35 Zweryfikuj, czy wszyscy klienci złożyli już zamówienie. Wyświetl nazwy wszystkich klientów wraz z datą zamówienia i datą dostawy zamówienia 
SELECT 
    customers.company, orders.order_date, orders.shipped_date
FROM
    customers
        LEFT JOIN
    orders ON customers.id = orders.customer_id;
*/
/* -- Zadanie 36 Zweryfikuj dla księgowości, czy wszystkie faktury zostały już opłacone. Przygotuj raport zawierający kolumny 'Data faktury' i 'Data płatności'.
SELECT 
    invoices.invoice_date AS 'Data faktury',
    orders.paid_date AS 'Data płatności'
FROM
    invoices
        LEFT JOIN
    orders ON invoices.order_id = orders.id;
*/
/* -- Zadanie 37 Dyrekcja prosi o przygotowanie raportu, który wykaże, czy wszyscy pracownicy składali zamówienia. Raport powinien zawierać datę zamówienia, nazwisko pracownika i jego stanowisko pracy. Ilu pracowników nie złożyło zamówienia?
SELECT 
    orders.order_date, employees.last_name, employees.job_title
FROM
    orders
        RIGHT JOIN
    employees ON orders.employee_id = employees.id; 
 -- ODP.: 50   
 -- + ew. zawężenie do samych niezamawiających / SELECT orders.order_date, employees.last_name, employees.job_title FROM orders RIGHT JOIN employees ON orders.employee_id=employees.id WHERE orders.order_date IS NULL; */
/* -- Zadanie 38 Przygotuj zestawienie, które będzie zawierało dane: nazwa klienta, data zamówienia i data dostawy 
SELECT 
    customers.company AS 'Nazwa klienta',
    orders.order_date AS 'Data zamówienia',
    orders.shipped_date AS 'Data dostawy'
FROM
    customers
        RIGHT JOIN
    orders ON customers.id = orders.customer_id;
*/
/* -- Zadanie 39 Zweryfikuj dla księgowości, czy wszystkie faktury zostały wystawione. Przygotuj raport zawierający zamówienie bez wystawionej faktury. Kolumny 'Forma płatności', 'Data płatności' i 'Data faktury'.
SELECT 
    invoices.invoice_date AS 'Data faktury',
    orders.payment_type AS 'Forma płatności',
    orders.paid_date AS 'Data płatności'
FROM
    invoices
        RIGHT JOIN
    orders ON orders.id = invoices.order_id
WHERE
    invoice_date IS NULL;
*/
