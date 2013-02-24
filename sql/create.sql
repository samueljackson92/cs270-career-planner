
/*
	CS27020 Career Planner Assignment
	PostgreSQL for creating the CS27020 assigment database
	Author: 	Samuel Jackson (slj11@aber.ac.uk)
	Date: 		10/2/13
*/

-- Create database using the following terminal command:
-- psql -h db.dcs.aber.ac.uk -U slj11 -d cs27020_12_13 < create.sql


--set the date style to be the obviously more sensible DMY format
SET datestyle = "ISO, DMY";

--Query to create the Company table
CREATE TABLE company (
	name 			varchar(50) PRIMARY KEY,
	information		varchar(2000)
);

--Create a type for the outcome of the result
CREATE TYPE result as ENUM('ACCEPTED', 'REJECTED', 'N/A');

--Query to create the Application table
CREATE TABLE application (
	company_name		varchar(100) REFERENCES company(name),
	role				varchar(100),
	deadline			date,
	CV 					varchar(2000),
	covering_letter		varchar(2000),
	date_sent			date,
	response			varchar(2000),
	interview_date		date,
	outcome				result NOT NULL DEFAULT 'N/A',
	feedback			varchar(2000),
	reflection			varchar(2000),
	PRIMARY KEY(company_name, role)
);

--Query to create the Strengths table
CREATE TABLE strengths (
	strength 		varchar(100) PRIMARY KEY,
	evidence		varchar(500),
	satisfaction	varchar(500)
);

--Linking table for Strengths
CREATE TABLE strength_link (
	strength 		varchar(100) REFERENCES strengths(strength),
	company_name	varchar(100), 
	role			varchar(100),
	FOREIGN KEY (company_name, role) REFERENCES application(company_name, role),
	PRIMARY KEY(strength, company_name, role)
);

--Query to create Qualifications table
CREATE TABLE qualifications (
	qualification 		varchar(100) PRIMARY KEY,
	qualification_date	date,
	grade				varchar(3) NOT NULL
);

--Linking table for Qualifications
CREATE TABLE qualification_link (
	qualification 	varchar(100)	REFERENCES qualifications(qualification),
	company_name	varchar(100),
	role			varchar(100),
	FOREIGN KEY (company_name, role) REFERENCES application(company_name, role),
	PRIMARY KEY(qualification, company_name, role)
);

--Query to create the aims table
CREATE TABLE aims (
	company_name 	varchar(100),
	role			varchar(100),
	personal_aim	varchar(500),
	relevance		varchar(500),
	FOREIGN KEY (company_name, role) REFERENCES application(company_name, role),
	PRIMARY KEY (company_name, role, personal_aim)
);

--Query to create the table of required strengths
CREATE TABLE req_strengths (
	strength 		varchar(100),
	company_name	varchar(100),
	role			varchar(100),
	FOREIGN KEY (company_name, role) REFERENCES application(company_name, role),
	PRIMARY KEY(strength, company_name, role)
);

--Query to create the table of required qualifications
CREATE TABLE req_qualifications (
	qualification 	varchar(100),
	company_name	varchar(100),
	role			varchar(100),
	FOREIGN KEY (company_name, role) REFERENCES application(company_name, role),
	PRIMARY KEY(qualification, company_name, role)
);