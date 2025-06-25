create schema colleage
use colleage;

-- creation of table 1

CREATE TABLE students (
    StudentID INT,
    Name VARCHAR(50),
    GPA DECIMAL(3,2),
    Major VARCHAR(20),
    Interested_Domain VARCHAR(50),
    Projects VARCHAR(100),
    Future_Career VARCHAR(50),
    Python VARCHAR(10),
    SQL_Skill VARCHAR(10),
    Java_Skill VARCHAR(10)
);
INSERT INTO students VALUES 
    (1, 'John Smith', 3.5, 'Computer Science', 'Artificial Intelligence', 'Chatbot Development', 'Machine Learning Researcher', 'Strong', 'Strong', 'Weak'),
(2, 'Alice Johnson', 3.2, 'Computer Science', 'Data Science', 'Data Analytics', 'Data Scientist', 'Average', 'Strong', 'Weak'),
(3, 'Robert Davis', 3.8, 'Computer Science', 'Software Development', 'E-commerce Website', 'Software Engineer', 'Strong', 'Strong', 'Average'),
(4, 'Emily Wilson', 3.7, 'Computer Science', 'Web Development', 'Full-Stack Web App', 'Web Developer', 'Weak', 'Strong', 'Strong'),
(5, 'Michael Brown', 3.4, 'Computer Science', 'Cybersecurity', 'Network Security', 'Information Security Analyst', 'Average', 'Weak', 'Strong'),
(6, 'Laura Lee', 3.9, 'Computer Science', 'Machine Learning', 'Image Recognition', 'Machine Learning Engineer', 'Strong', 'Average', 'Weak'),
(7, 'William Johnson', 3.6, 'Computer Science', 'Database Management', 'SQL Query Optimization', 'Database Administrator', 'Average', 'Strong', 'Weak'),
(8, 'Sarah Miller', 3.7, 'Computer Science', 'Cloud Computing', 'AWS Deployment', 'Cloud Solutions Architect', 'Weak', 'Strong', 'Average'),
(9, 'James Wilson', 3.3, 'Computer Science', 'Mobile App Development', 'Android App', 'Mobile App Developer', 'Average', 'Weak', 'Strong'),
(10, 'Olivia Clark', 3.5, 'Computer Science', 'Computer Graphics', '3D Rendering', 'Graphics Programmer', 'Weak', 'Average', 'Strong'),
(11, 'Andrew Hall', 3.8, 'Computer Science', 'Artificial Intelligence', 'Natural Language Processing', 'NLP Research Scientist', 'Strong', 'Average', 'Weak'),
(12, 'David Jones', 3.7, 'Computer Science', 'Web Development', 'Full-Stack Web App', 'Web Developer', 'Strong', 'Strong', 'Average'),
(13, 'Elizabeth Williams', 3.3, 'Computer Science', 'Mobile App Development', 'iOS App', 'Mobile App Developer', 'Average', 'Weak', 'Strong'),
(14, 'Charles Miller', 3.5, 'Computer Science', 'Computer Graphics', 'Game Development', 'Game Developer', 'Weak', 'Average', 'Strong'),
(15, 'Susan Davis', 3.8, 'Computer Science', 'Software Engineering', 'E-commerce Website', 'Software Engineer', 'Strong', 'Strong', 'Average'),
(16, 'John Brown', 3.6, 'Computer Science', 'Cybersecurity', 'Network Security', 'Information Security Analyst', 'Average', 'Weak', 'Strong'),
(17, 'Laura Lee', 3.9, 'Computer Science', 'Machine Learning', 'Image Recognition', 'Machine Learning Engineer', 'Strong', 'Average', 'Weak'),
(18, 'William Johnson', 3.6, 'Computer Science', 'Database Management', 'SQL Query Optimization', 'Database Administrator', 'Average', 'Strong', 'Weak'),
(19, 'Sarah Miller', 3.7, 'Computer Science', 'Cloud Computing', 'AWS Deployment', 'Cloud Solutions Architect', 'Weak', 'Strong', 'Average'),
(20, 'James Wilson', 3.3, 'Computer Science', 'Mobile App Development', 'Android App', 'Mobile App Developer', 'Average', 'Weak', 'Strong');
select * from students

-- avg GPA of students
select avg(GPA),Interested_Domain from students group by Interested_Domain 

-- count of students
select count(Interested_Domain),Interested_Domain from students 
group by Interested_Domain 
order by count(Interested_Domain) asc

-- maximum GPA of students
select max(GPA) from students 
select max(GPA),min(GPA) from  

-- students who are strong python and sql
select Name,Python,SQL_Skill from students where Python="Strong" and SQL_Skill="Strong" 

--creating table 2
CREATE TABLE Students_Details(
StudentID INT,
Name VARCHAR(50),
Gender VARCHAR(10),
Year_of_study VARCHAR(10),
Age INT
);
insert into Students_Details values
(1, 'John Smith', 'Male', '3rd', 21),
(2, 'Alice Johnson', 'Female', '2nd', 20),
(3, 'Robert Davis', 'Male', '4th', 22),
(4, 'Emily Wilson', 'Female', '3rd', 21),
(5, 'Michael Brown', 'Male', '4th', 23),
(6, 'Laura Lee', 'Female', '4th', 22),
(7, 'William Johnson', 'Male', '2nd', 20),
(8, 'Sarah Miller', 'Female', '3rd', 21),
(9, 'James Wilson', 'Male', '4th', 23),
(10, 'Olivia Clark', 'Female', '4th', 22),
(11, 'Andrew Hall', 'Male', '3rd', 21),
(12, 'David Jones', 'Male', '4th', 22),
(13, 'Elizabeth Williams', 'Female', '3rd', 21),
(14, 'Charles Miller', 'Male', '4th', 23),
(15, 'Susan Davis', 'Female', '4th', 22),
(16, 'John Brown', 'Male', '2nd', 20),
(17, 'Laura Lee', 'Female', '3rd', 21),
(18, 'William Johnson', 'Male', '4th', 23),
(19, 'Sarah Miller', 'Female', '4th', 22),
(20, 'James Wilson', 'Male', '2nd', 20);

select *from Students_Details

--inner join
select * from Students_Details 
inner join Students on 
Students_Details.StudentID = Students.StudentID;

