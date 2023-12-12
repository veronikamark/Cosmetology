USE Cosmetology;

SELECT
    LPAD(CAST(Doctor.DoctorID AS CHAR(3)), 3, '0') AS "Doctor ID",
    CONCAT(FirstName, ' ', LastName) AS "Doctor Name",
    Email,
    PhoneNumber,
    UPPER(Specialization) AS "Specialization",
    DepartmentId
FROM
    Doctor
ORDER BY
    LastName, FirstName;
