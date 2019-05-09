CREATE TABLE states (
    STCode INT,
    state_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (STCode)
);

CREATE TABLE districts (
    DTCode INT,
    district_name VARCHAR(255) NOT NULL,
    STCode INT,
    PRIMARY KEY (DTCode, STCode),
    FOREIGN KEY (STCode) REFERENCES states(STCode)
);

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/states.csv' INTO TABLE states FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 lines;

LOAD DATA LOCAL INFILE
'/docker-entrypoint-initdb.d/districts.csv'
INTO TABLE districts
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 lines;
