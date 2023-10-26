DROP DATABASE IF EXISTS medical;

CREATE DATABASE medical;

\c medical

CREATE TABLE doctor(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

CREATE TABLE patient(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

CREATE TABLE visits(
    visit_id SERIAL PRIMARY KEY,
    visit_date DATE NOT NULL,
    doctor_id INTEGER NOT NULL REFERENCES doctor(id),
    patient_id INTEGER NOT NULL REFERENCES patient(id),
    findings TEXT
);

CREATE TABLE diseases(
    disease_id SERIAL PRIMARY KEY,
    patient_id INTEGER REFERENCES patient(id),
    visit_id INTEGER REFERENCES visits(visit_id),
    disease TEXT
);

