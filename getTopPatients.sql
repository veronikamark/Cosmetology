USE Cosmetology;

SELECT
    Patient.PatientID,
    CONCAT(Patient.FirstName, ' ', Patient.LastName) AS "Patient Name",
    SUM(Treatment.Price) AS "Total Treatment Cost"
FROM
    Patient
JOIN
    Visit ON Patient.PatientID = Visit.PatientID
JOIN
    Treatment ON Visit.TreatmentID = Treatment.TreatmentID
GROUP BY
    Patient.PatientID
ORDER BY
    "Total Treatment Cost" DESC, Patient.PatientID ASC
LIMIT 5;
