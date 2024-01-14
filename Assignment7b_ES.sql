-- --------------------------------------------------------------------------------
-- Name: Eric Shepard
-- Class: IT-111 
-- Abstract: Assignment 7b
-- --------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------
-- Options
-- --------------------------------------------------------------------------------
USE dbMeLikeAlot;     -- Get out of the master database
SET NOCOUNT ON; -- Report only errors

-- --------------------------------------------------------------------------------
--						Problem #1
-- --------------------------------------------------------------------------------

-- Drop Table Statements

IF OBJECT_ID ('TCustomers')		IS NOT NULL DROP TABLE TCustomers
IF OBJECT_ID ('TSongs')			IS NOT NULL DROP TABLE TSongs
IF OBJECT_ID ('TArtists')		IS NOT NULL DROP TABLE TArtists


-- --------------------------------------------------------------------------------
--	Step #1 : Create table 
-- --------------------------------------------------------------------------------

CREATE TABLE TCustomers
(
	 intCustomerID		INTEGER			NOT NULL
	,strFirstName		VARCHAR(255)	NOT NULL
	,strLastName		VARCHAR(255)	NOT NULL
	,strAddress			VARCHAR(255)	NOT NULL
	,strCity			VARCHAR(255)	NOT NULL
	,strState			VARCHAR(255)	NOT NULL
	,strZip				VARCHAR(255)	NOT NULL
	,dtmDateOfBirth		DATETIME		NOT NULL
	,strRace			VARCHAR(255)	NOT NULL
	,strGender			VARCHAR(255)	NOT NULL
	,CONSTRAINT TCustomers_PK PRIMARY KEY ( intCustomerID )
)

CREATE TABLE TSongs
(
	 intSongID			INTEGER			NOT NULL
	,strSongName		VARCHAR(255)	NOT NULL
	,strGenre			VARCHAR(255)	NOT NULL
	,strRecordLabel		VARCHAR(255)	NOT NULL
	,dtmDateRecorded	DATETIME		NOT NULL
	,CONSTRAINT TSongs_PK PRIMARY KEY ( intSongID )
)

CREATE TABLE TArtists
(
	 intArtistID		INTEGER			NOT NULL
	,strFirstName		VARCHAR(255)	NOT NULL
	,strLastName		VARCHAR(255)	NOT NULL
	,CONSTRAINT TArtists_PK PRIMARY KEY ( intArtistID )
)


-- --------------------------------------------------------------------------------
--	Step #2 : Insert 
-- --------------------------------------------------------------------------------

INSERT INTO TCustomers (intCustomerID, strFirstName, strLastName, strAddress, strCity, strState, strZip, dtmDateOfBirth, strRace, strGender)
VALUES (1, 'Joe', 'Jenkins', '725 Driver st', 'Milwaukee', 'WI', '35678', '02/14/1962', 'Jedi', 'Male')
	  ,(2, 'James', 'Johnson', '23 Airis rd', 'Los Angeles', 'CA', '74633', '09/26/1984', 'Wookie', 'Male')
	  ,(3, 'John', 'Jameson', '3912 Windleaf ct', 'Seattle', 'WA', '94201', '06/30/1976', 'Ewok', 'Male')

INSERT INTO TSongs (intSongID, strSongName, strGenre, strRecordLabel, dtmDateRecorded)
VALUES (1, 'I lost my Cat', 'Rock', 'Smash Alot', '08/13/2001')
	  ,(2, 'No shoes in Clovertown', 'Trance', 'Trippy Town', '11/24/2006')
	  ,(3, 'If it aint done I aint doing it', 'Classical', 'Washington Symphony', '02/16/2009')

INSERT INTO TArtists (intArtistID, strFirstName, strLastName)
VALUES (1, 'Bobby', 'BreakThings')
	  ,(2, 'Buzz', 'Kirkpatrick')
	  ,(3, 'Analise', 'Mohave')

	  
SELECT * FROM TSongs

SELECT * FROM TCustomers
WHERE strLastName = 'Johnson'

SELECT * FROM TSongs
WHERE dtmDateRecorded > '11/20/2006'

UPDATE TCustomers
SET strCity = 'San Diego'
WHERE intCustomerID = 2

UPDATE TSongs
SET strRecordLabel = 'Washington Symphony Orchestra'
WHERE intSongID = 3

SELECT * FROM TSongs

SELECT * FROM TCustomers
WHERE strLastName = 'Johnson'

DELETE FROM TCustomers
WHERE intCustomerID = 2

DELETE FROM TSongs
WHERE strRecordLabel = 'Washington Symphony Orchestra'

SELECT * FROM TSongs

SELECT * FROM TCustomers
WHERE strLastName = 'Johnson'
