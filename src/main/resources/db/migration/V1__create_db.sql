
-- DROP TABLE emplyoee;
CREATE TABLE employee
(id INT,
 employeenumber INT,
 login VARCHAR(255),
 firstname VARCHAR(255),
 lastname VARCHAR(255)
);

-- DROP TABLE customer;
CREATE TABLE customer
(id INT,
 customerenumber INT,
 login VARCHAR(255),
 customertypeid INT,
 firstname VARCHAR(255),
 lastname VARCHAR(255),
 birthdate DATE,
 associationid INT
);

-- DROP TABLE customertype;
CREATE TABLE customertype
(id INT,
 description VARCHAR(255)
);

-- DROP TABLE login;
CREATE TABLE login
(id INT,
 username VARCHAR(255),
 passwordhash VARCHAR(255),
 salt VARCHAR(255),
 failedloginattempts INT,
 validuntil DATE,
 locked BOOLEAN
);

-- DROP TABLE account;
CREATE TABLE account
(id INT,
 accountnumber INT,
 accounttypeid INT,
 customerid INT,
 description VARCHAR(255)
);

-- DROP TABLE accounttype;
CREATE TABLE accounttype
(id INT,
 description VARCHAR(255),
 currencyid INT,
 interestrate DOUBLE,
 annualfee DOUBLE
);

-- DROP TABLE currency;
CREATE TABLE currency
(id INT,
 description VARCHAR(255)
);

-- DROP TABLE banktransaction;
CREATE TABLE banktransaction
(id INT,
 transactiontypeid INT,
 senderbankid INT,
 senderaccountid INT,
 recipientbankid INT,
 recipientaccountid INT,
 amount DOUBLE,
 transactiontime TIMESTAMP,
 description VARCHAR(255)
);

-- DROP TABLE transactiontype;
CREATE TABLE transactiontype
(id INT,
 description VARCHAR(255)
);

--DROP TABLE bank;
--CREATE TABLE bank
--(id INT,
-- banknumber INT,
-- description VARCHAR(255),
-- serveraddress VARCHAR(1023),
--);

CREATE TABLE BANK (
  ID INTEGER NOT NULL,
  BANK_NUMBER INTEGER NOT NULL,
  DESCRPTION VARCHAR(255),
  SERVER_ADRESS VARCHAR(1023) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE SEQUENCE (
  SEQ_NAME VARCHAR(50) NOT NULL, 
  SEQ_COUNT INTEGER,
  PRIMARY KEY (SEQ_NAME)
);

INSERT INTO SEQUENCE (SEQ_NAME, SEQ_COUNT) VALUES ('SEQ_GEN', 1);
