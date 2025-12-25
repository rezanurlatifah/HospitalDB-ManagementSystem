Query SELECT
1. SELECT patient_id, first_name, last_name, contact_person 
   FROM patient;
2. SELECT name, price, stock 
   FROM medicine 
   WHERE stock <= 100;

Query JOIN
--Menampilkan Detail Pemeriksaan
SELECT 
    mr.medical_record_code,
    p.first_name AS nama_pasien,
    d.first_name AS nama_dokter,
    mr.diagnosis,
    mr.treatment
FROM medical_record mr
JOIN patient p ON mr.patient_id = p.patient_id
JOIN doctor d ON mr.doctor_id = d.doctor_id;
--Menampilkan Detail Resep Pasien
SELECT 
    p.first_name AS nama_pasien,
    m.name AS nama_obat,
    mrm.dosage AS dosis_resep
FROM patient p
JOIN medical_record mr ON p.patient_id = mr.patient_id
JOIN medical_record_medicine mrm ON mr.medical_record_code = mrm.medical_record_code
JOIN medicine m ON mrm.medical_code = m.medicine_code;

Query UPDATE
UPDATE medicine 
SET stock = stock + 100 
WHERE name = 'Amoxicillin';

Query DELETE 
UPDATE medicine 
SET stock = stock + 100 
WHERE name = 'Amoxicillin';
