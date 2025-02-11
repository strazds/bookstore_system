SELECT 
    b.title 
FROM 
    book AS b
INNER JOIN 
    publisher AS p ON p.publisherid = b.publisherid
WHERE 
    p.name = 'Penguin Random House'
ORDER BY 
    b.title ASC;

SELECT TOP 10
    b.title AS BuchTitel,
    COUNT(oi.isbn) AS AnzahlVerkäufe
FROM
    book AS b
INNER JOIN
    orderitem AS oi ON b.isbn = oi.isbn
GROUP BY
    b.title
ORDER BY
    AnzahlVerkäufe DESC;