USE Cosmetology;

SELECT
    TreatmentID,
    Name AS 'Treatment Name',
    Duration,
    Price
FROM
    Treatment
WHERE
    Price BETWEEN 50 AND 200
ORDER BY Price;