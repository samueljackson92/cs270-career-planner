
-- clear the database of all tables ready to reimplement
-- psql -h db.dcs.aber.ac.uk -U slj11 -d cs27020_12_13 < delete_db.sql

DROP TABLE IF EXISTS application CASCADE;
DROP TABLE IF EXISTS company CASCADE;
DROP TABLE IF EXISTS strengths CASCADE;
DROP TABLE IF EXISTS strength_link CASCADE;
DROP TABLE IF EXISTS qualifications CASCADE;
DROP TABLE IF EXISTS qualification_link CASCADE;
DROP TABLE IF EXISTS aims CASCADE;
DROP TABLE IF EXISTS req_strengths CASCADE;
DROP TABLE IF EXISTS req_qualifications CASCADE;