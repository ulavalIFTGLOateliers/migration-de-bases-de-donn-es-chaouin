ALTER TABLE singer RENAME TO musician;
CREATE TABLE band (
    bandName VARCHAR(50),
    creation YEAR,
    genre VARCHAR(50),
    PRIMARY KEY (bandName)
);
INSERT INTO band (bandName, creation, genre) VALUES
('Crazy Duo', 2015, 'rock'),
('Luna', 2009, 'classical'),
('Mysterio', 2019, 'pop');

ALTER TABLE musician
ADD COLUMN role VARCHAR(50),
ADD COLUMN bandName VARCHAR(50);

ALTER TABLE musician
CHANGE COLUMN singerName musicianName VARCHAR(50);

UPDATE musician
SET role = 'vocals', bandName = 'Crazy Duo'
WHERE firstName = 'Darcy' AND lastName = 'Boles' AND age = 32;

UPDATE musician
SET role = 'guitar', bandName = 'Mysterio'
WHERE firstName = 'Jessie' AND lastName = 'Chancey' AND age = 23;

UPDATE musician
SET role = 'percussion', bandName = 'Crazy Duo'
WHERE firstName = 'Sarah' AND lastName = 'Derrick' AND age = 47;

UPDATE musician
SET role = 'piano', bandName = 'Luna'
WHERE firstName = 'Emily' AND lastName = 'Seibold' AND age = 31;
