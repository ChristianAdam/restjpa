
DROP DATABASE IF EXISTS corebanking;
CREATE DATABASE corebanking;

DROP TABLE IF EXISTS corebanking.employee;
CREATE TABLE corebanking.employee
(ID INT NOT NULL,
 EMPLOYEENUMBER INT NOT NULL,
 LOGIN VARCHAR(255) NOT NULL,
 FIRSTNAME VARCHAR(255),
 LASTNAME VARCHAR(255),
 PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS corebanking.customer;
CREATE TABLE corebanking.customer
(ID INT NOT NULL,
 CUSTOMERENUMBER INT NOT NULL,
 LOGIN VARCHAR(255) NOT NULL,
 CUSTOMERTYPEID INT NOT NULL,
 FIRSTNAME VARCHAR(255),
 LASTNAME VARCHAR(255),
 BIRTHDATE DATE,
 ASSOCIATIONID INT,
 PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS corebanking.customertype;
CREATE TABLE corebanking.customertype
(ID INT NOT NULL,
 DESCRIPTION VARCHAR(255),
 PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS corebanking.login;
CREATE TABLE corebanking.login
(ID INT NOT NULL,
 USERNAME VARCHAR(255) NOT NULL,
 PASSWORDHASH VARCHAR(255) NOT NULL,
 SALT VARCHAR(255) NOT NULL,
 FAILEDLOGINATTEMPTS INT NOT NULL,
 VALIDUNTIL DATE NOT NULL,
 LOCKED BOOLEAN NOT NULL,
 PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS corebanking.account;
CREATE TABLE corebanking.account
(ID INT NOT NULL,
 ACCOUNTNUMBER INT NOT NULL,
 ACCOUNTTYPEID INT NOT NULL,
 CUSTOMERID INT NOT NULL,
 DESCRIPTION VARCHAR(255) NOT NULL,
 PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS corebanking.accounttype;
CREATE TABLE corebanking.accounttype
(ID INT NOT NULL,
 DESCRIPTION VARCHAR(255) NOT NULL,
 CURRENCYID INT NOT NULL,
 INTERESTRATE DOUBLE NOT NULL,
 ANNUALFEE DOUBLE NOT NULL,
 PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS corebanking.currency;
CREATE TABLE corebanking.currency
(ID INT NOT NULL,
 DESCRIPTION VARCHAR(255) NOT NULL,
 PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS corebanking.banktransaction;
CREATE TABLE corebanking.banktransaction
(ID INT NOT NULL,
 TRANSACTIONTYPEID INT NOT NULL,
 SENDERBANKID INT NOT NULL,
 SENDERACCOUNTID INT NOT NULL,
 RECIPIENTBANKID INT NOT NULL,
 RECIPIENTACCOUNTID INT NOT NULL,
 AMOUNT DOUBLE NOT NULL,
 TRANSACTIONTIME TIMESTAMP NOT NULL,
 DESCRIPTION VARCHAR(255),
 PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS corebanking.transactiontype;
CREATE TABLE corebanking.transactiontype
(ID INT NOT NULL,
 DESCRIPTION VARCHAR(255) NOT NULL,
 PRIMARY KEY (ID)
);

DROP TABLE  IF EXISTS corebanking.bank;
CREATE TABLE corebanking.bank
(ID INT NOT NULL,
 BANKNUMBER INT NOT NULL,
 DESCRIPTION VARCHAR(255) NOT NULL,
 SERVERADDRESS VARCHAR(1023) NOT NULL,
 PRIMARY KEY (ID)
);


--CREATE TABLE SEQUENCE (
--  SEQ_NAME VARCHAR(50) NOT NULL, 
--  SEQ_COUNT INTEGER,
--  PRIMARY KEY (SEQ_NAME)
--);

--INSERT INTO SEQUENCE (SEQ_NAME, SEQ_COUNT) VALUES ('SEQ_GEN', 1);
