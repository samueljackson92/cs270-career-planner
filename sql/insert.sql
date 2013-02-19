/*
	CS27020 Career Planner Assignment
	PostgreSQL for inserting data into the CS27020 assigment database
	Author: 	Samuel Jackson (slj11@aber.ac.uk)
	Date: 		13/2/13
*/

-- Insert the data using the following terminal command:
-- psql -h db.dcs.aber.ac.uk -U slj11 -d cs27020_12_13 < insert.sql

--First make some companies
INSERT INTO company (name, information) VALUES
	('ISIS', 'Neutron Source'),
	('HP', 'We make printers'),
	('Aberystwyth University', 'Teaching and stuff.');


-- make some of my strengths
INSERT INTO strengths (strength, evidence, satisfaction) VALUES
	('Punctual', 'I own a watch', 'I love using this strength'),
	('Teamwork', 'I can work in a team', 'I love working in teams'),
	('Flexibility', 'I can be very flexible', 'I can touch my toes');

--make some qualifications up
INSERT INTO qualifications (qualification, qualification_date, grade) VALUES
	('Computing', '5/8/10', 'A'),
	('Biology', '5/8/10', 'B+'),
	('Software Engineering MEng', '2/5/12', '1:1');

--Create a new application
INSERT INTO application (company_name, role, deadline, CV, covering_letter, date_sent, response, interview_date, outcome, feedback, reflection)  VALUES
	('ISIS', 'Software Engineer', '1/3/13', 'Link to CV', 'Link to covering letter', '2/2/13', 'Link to response', '3/4/13', 'ACCEPTED', 'Some outcome', 'Could have been better'),
	('HP', 'Web Developer', '3/3/13', 'http://www.somethinghp.com', 'http://www.someotherthing.hp', '2/2/13', 'A response', '3/5/13', 'N/A', 'What was the outcome', 'some reflection');


--make up some aims
INSERT INTO aims(company_name, role, personal_aim, relevance) VALUES
	('ISIS', 'Software Engineer', 'Learn to fly a plane', 'Not really very relevant'),
	('ISIS', 'Software Engineer', 'Learn C++', 'Extremely Relevant'),
	('HP', 'Web Developer', 'Learn to fly a plane', 'Somewhat relevent');

--Add some required strengths with an application
INSERT INTO req_strengths (company_name, role, strength) VALUES
	('ISIS', 'Software Engineer', 'Leadership'),
	('ISIS', 'Software Engineer', 'Punctual'),
	('HP', 'Web Developer', 'Punctual');

--Add some required qualifications with an application
INSERT INTO req_qualifications (company_name, role, qualification) VALUES
	('ISIS', 'Software Engineer', 'Computing'),
	('HP', 'Web Developer', 'Mathematics'),
	('ISIS', 'Software Engineer', 'Mathematics');

--Link some strengths with an application
INSERT INTO strength_link (company_name, role, strength) VALUES
	('ISIS', 'Software Engineer', 'Punctual'),
	('HP', 'Web Developer', 'Punctual'),
	('ISIS', 'Software Engineer', 'Teamwork');

--Link some qualifications with an application
INSERT INTO qualification_link (company_name, role, qualification) VALUES
	('ISIS', 'Software Engineer', 'Computing'),
	('HP', 'Web Developer', 'Biology'),
	('ISIS', 'Software Engineer', 'Biology');