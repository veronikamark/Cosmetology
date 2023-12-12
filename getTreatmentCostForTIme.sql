USE Cosmetology;

SELECT
    Patient.PatientID,
    CONCAT(Patient.FirstName, ' ', Patient.LastName) AS "Patient Name",
    DATE_FORMAT(Visit.VisitDate, '%Y-%m') AS "Visit Month",
    SUM(Treatment.Price) AS "Total Treatment Cost"
FROM
    Patient
JOIN
    Visit ON Patient.PatientID = Visit.PatientID
JOIN
    Treatment ON Visit.TreatmentID = Treatment.TreatmentID
WHERE
    Visit.VisitDate BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY
    Patient.PatientID, "Visit Month"
ORDER BY
    "Total Treatment Cost";