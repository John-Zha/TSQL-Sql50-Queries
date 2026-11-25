-- Create a new database
CREATE DATABASE sql50;
GO
USE sql50;
GO

-- Create the Student table
CREATE TABLE Student (
    SId VARCHAR(10),
    Sname VARCHAR(20),
    Sage DATETIME,
    Ssex VARCHAR(10)
);

INSERT INTO Student VALUES ('01', 'Zhao Lei',   '1990-01-01', 'Male');
INSERT INTO Student VALUES ('02', 'Qian Dian',  '1990-12-21', 'Male');
INSERT INTO Student VALUES ('03', 'Sun Feng',   '1990-12-20', 'Male');
INSERT INTO Student VALUES ('04', 'Li Yun',     '1990-12-06', 'Male');
INSERT INTO Student VALUES ('05', 'Zhou Mei',   '1991-12-01', 'Female');
INSERT INTO Student VALUES ('06', 'Wu Lan',     '1992-01-01', 'Female');
INSERT INTO Student VALUES ('07', 'Zheng Zhu',  '1989-01-01', 'Female');
INSERT INTO Student VALUES ('09', 'Zhang San',  '2017-12-20', 'Female');
INSERT INTO Student VALUES ('10', 'Li Si',      '2017-12-25', 'Female');
INSERT INTO Student VALUES ('11', 'Li Si',      '2012-06-06', 'Female');
INSERT INTO Student VALUES ('12', 'Zhao Liu',   '2013-06-13', 'Female');
INSERT INTO Student VALUES ('13', 'Sun Qi',     '2014-06-01', 'Female');

-- Create the Course table
CREATE TABLE Course (
    CId VARCHAR(10),
    Cname NVARCHAR(20),
    TId VARCHAR(10)
);

INSERT INTO Course VALUES ('01', 'Chinese',     '02');
INSERT INTO Course VALUES ('02', 'Mathematics', '01');
INSERT INTO Course VALUES ('03', 'English',     '03');

-- Create the Teacher table
CREATE TABLE Teacher (
    TId VARCHAR(10),
    Tname VARCHAR(20)
);

INSERT INTO Teacher VALUES ('01', 'Zhang San');
INSERT INTO Teacher VALUES ('02', 'Li Si');
INSERT INTO Teacher VALUES ('03', 'Wang Wu');

-- Create the SC table
CREATE TABLE SC (
    SId VARCHAR(10),
    CId VARCHAR(10),
    score DECIMAL(18,1)
);

INSERT INTO SC VALUES ('01', '01', 80);
INSERT INTO SC VALUES ('01', '02', 90);
INSERT INTO SC VALUES ('01', '03', 99);
INSERT INTO SC VALUES ('02', '01', 70);
INSERT INTO SC VALUES ('02', '02', 60);
INSERT INTO SC VALUES ('02', '03', 80);
INSERT INTO SC VALUES ('03', '01', 80);
INSERT INTO SC VALUES ('03', '02', 80);
INSERT INTO SC VALUES ('03', '03', 80);
INSERT INTO SC VALUES ('04', '01', 50);
INSERT INTO SC VALUES ('04', '02', 30);
INSERT INTO SC VALUES ('04', '03', 20);
INSERT INTO SC VALUES ('05', '01', 76);
INSERT INTO SC VALUES ('05', '02', 87);
INSERT INTO SC VALUES ('06', '01', 31);
INSERT INTO SC VALUES ('06', '03', 34);
INSERT INTO SC VALUES ('07', '02', 89);
INSERT INTO SC VALUES ('07', '03', 98);
GO