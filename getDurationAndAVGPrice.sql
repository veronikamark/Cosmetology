USE Cosmetology;

SELECT
    Doctor.DoctorID,
    CONCAT(Doctor.FirstName, ' ', Doctor.LastName) AS "Doctor Name",
    COUNT(DISTINCT Visit.VisitID) AS "Number of Visits",
    SUM(Treatment.Duration) AS "Total Treatment Duration",
    AVG(Treatment.Price) AS "Average Treatment Price"
FROM
    Doctor
JOIN
    Visit ON Doctor.DoctorID = Visit.DoctorID
JOIN
    Treatment ON Visit.TreatmentID = Treatment.TreatmentID
GROUP BY
    Doctor.DoctorID
ORDER BY
    "Number of Visits" DESC, "Total Treatment Duration" DESC;