/*
	CS27020 Career Planner Assignment
	PostgreSQL for inserting some example data into the CS27020 assigment database
	Author: 	Samuel Jackson (slj11@aber.ac.uk)
	Date: 		13/2/13
*/

-- Insert the data using the following terminal command:
-- psql -h db.dcs.aber.ac.uk -U slj11 -d cs27020_12_13 < insert.sql

--First make some companies
INSERT INTO company (name, information) VALUES
	('ISIS', 'Neutron Source'),
	('HP', 'We make printers'),
	('Aberystwyth University', 'Teaching and stuff.'),
	('CERN', 'Smashing things together since 1954');


-- make some of my strengths
INSERT INTO strengths (strength, evidence, satisfaction) VALUES
	('Punctual', 'I own a watch', 'I love using this strength'),
	('Teamwork', 'I can work in a team', 'I love working in teams'),
	('Flexibility', 'I can be very flexible', 'I can touch my toes');

--make some qualifications up
INSERT INTO qualifications (qualification, qualification_date, grade) VALUES
	('Computing', '5/8/10', 'A'),
	('Biology', '5/8/10', 'B+'),
	('Software Engineering MEng', '2/5/12', '1:1'),
	('Robotics', '5/8/14', 'MSc');

--Create a new application
INSERT INTO application (company_name, role, deadline, CV, covering_letter,
	date_sent, response, interview_date, outcome, feedback, reflection)  VALUES
	('ISIS', 'Software Engineer', '1/3/13', 'http://mycv.com', 'http://mycoveringletter.com', 
		'2/2/13', 'Link to response', '3/4/13', 'ACCEPTED', 'Some outcome', 'Could have been better'),
	('ISIS', 'Web Developer', '1/1/13', 'http://asite.com', 'http://anothersite.com', 
		'6/8/13', 'Link to response', '7/8/13', 'REJECTED', 'An outcome', 'Who knows'),
	('HP', 'Web Developer', '3/3/13', 'http://www.somethinghp.com', 'http://www.someotherthing.hp', 
		'2/2/13', 'A response', '3/5/13', 'N/A', 'What was the outcome', 'some reflection'),
	('HP', 'Software Developer', '12/8/13', 'http://www.somethinghp.com', 'http://www.someotherthing.hp', 
		'13/4/13', 'A response', '13/8/13', 'N/A', 'Was not good', 'I will do better next time'),
	('Aberystwyth University', 'Demonstrator', '12/8/13', 'http://aber.ac.uk', 'http://aber.ac.uk', 
		'13/4/13', 'A response', '13/8/13', 'REJECTED', 'Failed to pass induction', 'Get better interpersonnal skills');


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
	('ISIS', 'Software Engineer', 'Mathematics'),
	('Aberystwyth University', 'Demonstrator', 'Robotics MSc'),
	('Aberystwyth University', 'Demonstrator', 'Intelligent Systems MSc');

--Link some strengths with an application
INSERT INTO strength_link (company_name, role, strength) VALUES
	('ISIS', 'Software Engineer', 'Punctual'),
	('HP', 'Web Developer', 'Punctual'),
	('ISIS', 'Software Engineer', 'Teamwork'),
	('Aberystwyth University', 'Demonstrator', 'Flexibility');

--Link some qualifications with an application
INSERT INTO qualification_link (company_name, role, qualification) VALUES
	('ISIS', 'Software Engineer', 'Computing'),
	('HP', 'Web Developer', 'Biology'),
	('ISIS', 'Software Engineer', 'Biology'),
	('ISIS', 'Software Engineer', 'Software Engineering MEng'),
	('Aberystwyth University', 'Demonstrator', 'Robotics');