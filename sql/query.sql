/*
	CS27020 Career Planner Assignment
	PostgreSQL for querying the database to show its
	operation.
	Author: 	Samuel Jackson (slj11@aber.ac.uk)
	Date: 		13/2/13
*/

--Listing all applications made to a company
SELECT * FROM application WHERE company_name='ISIS';

--Listing qulifications obtained since you last applied
SELECT * FROM qualifications WHERE qualification_date > (SELECT deadline FROM application WHERE company_name='ISIS' AND role='Software Engineer');

--List all applications that have been rejected
SELECT * FROM application WHERE outcome='REJECTED';

--List all aims associated with an application
SELECT * FROM aims WHERE company_name='ISIS' AND role='Software Engineer';

--List all required strengths of an application
SELECT * FROM req_strengths WHERE company_name='ISIS' AND role='Software Engineer';

--List all web developer roles
SELECT * FROM application WHERE role='Web Developer';

-------------------------------------------
-- Error Queries
-------------------------------------------

-- insert a company that already exists
INSERT INTO company(name, information) VALUES
	('ISIS', 'Some organisation');

-- insert an application to a company that doesn't exist
INSERT INTO application(company_name, role, outcome) VALUES
	('Random', 'A Role', 'N/A');

-- insert an application that doesn't have a role
INSERT INTO application (company_name, outcome) VALUES
	('ISIS', 'N/A');

--insert an application with incorretly formatted date
INSERT INTO application (company_name, role, deadline) VALUES
	('ISIS', 'Web Developer', '133242345');

--insert a strength without a Primary Key
INSERT INTO strengths (evidence, satisfaction) VALUES
	('Some evidence', 'Some satisfaction');

-- linking to an application where the strength role doesn't exist
INSERT INTO strength_link (company_name, role, strength) VALUES
	('ISIS', 'Web Developer', 'Knows C++');

-- linking to an application where the company doesn't exist
INSERT INTO strength_link (company_name, role, strength) VALUES
	('Google', 'Software Engineer', 'Knows C++');
