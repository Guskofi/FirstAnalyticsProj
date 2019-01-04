USE george;
CREATE TABLE Csv2Sql (
collectionArtistName VARCHAR(255) NULL,
collectionArtistViewUrl VARCHAR(255) NULL,
isStreamable VARCHAR(255) NULL,
trackCount INT NULL,
kind VARCHAR(255) NULL,
collectionCensoredName VARCHAR(255) NULL,
primaryGenreName VARCHAR(255) NULL,
trackPrice DECIMAL(3,2) NULL,
currency VARCHAR(255) NULL,
collectionPrice DECIMAL(3,2) NULL,
artistId  INT NOT NULL,
artworkUrl60 VARCHAR(255),
collectionExplicitness VARCHAR(255),
collectionArtistId INT NOT NULL,
trackViewUrl VARCHAR(255) NOT NULL,
artworkUrl100 VARCHAR(255) NULL,
wrapperType VARCHAR(255) NULL,
previewUrl VARCHAR(255) NULL,
trackTimeMillis INT NOT NULL,
artistName VARCHAR(255) NOT NULL,
trackCensoredName VARCHAR(255) NULL,
trackId INT NOT NULL PRIMARY KEY,
collectionViewUrl VARCHAR(255),
country VARCHAR(255) NULL,
trackName VARCHAR(255) NOT NULL,
releaseDate DATETIME NULL,
artworkUrl30 VARCHAR(255) NULL,
collectionName VARCHAR(255),
discCount INT NULL,
artistViewUrl VARCHAR(255) NULL,
trackExplicitness VARCHAR(255) NULL,
discNumber INT NULL,
collectionId INT NULL,
trackNumber INT NULL
);


LOAD DATA LOCAL INFILE '/Users/Gus/names22.csv' 
  INTO TABLE Csv2Sql 
  FIELDS TERMINATED BY ',' 
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
  IGNORE 1 ROWS;

