--------------------------------------------------------
--  DDL for Table SHL_USER
--------------------------------------------------------

CREATE TABLE SHL_USER 
(
  USER_ID NUMBER(8) NOT NULL 
, USER_EMAIL VARCHAR2(50) 
, USER_NAME VARCHAR2(100)
, USER_PWD VARCHAR2(20) 
, CONSTRAINT SH_USERS_PK PRIMARY KEY 
  (
    USER_ID 
  )
  ENABLE 
);

COMMENT ON TABLE SHL_USER IS 'User table';

COMMENT ON COLUMN SHL_USER.USER_ID IS 'The user id';

COMMENT ON COLUMN SHL_USER.USER_EMAIL IS 'The user email';

COMMENT ON COLUMN SHL_USER.USER_NAME IS 'The user name';

COMMENT ON COLUMN SHL_USER.USER_PWD IS 'The user pwd';

--------------------------------------------------------
--  DDL for Sequence USER_SEQ
--------------------------------------------------------
CREATE SEQUENCE USER_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 99999999 MINVALUE 1 NOCACHE;


--------------------------------------------------------
--  DDL for Table SHL_ROLE
--------------------------------------------------------
CREATE TABLE SHL_ROLE 
(
  ROLE_ID NUMBER(8) NOT NULL 
, ROLE_CODE VARCHAR2(100) NOT NULL 
, CONSTRAINT SHL_ROLE_PK PRIMARY KEY 
  (
    ROLE_ID 
  )
  ENABLE 
);

COMMENT ON TABLE SHL_ROLE IS 'The role table to assign to users';

COMMENT ON COLUMN SHL_ROLE.ROLE_ID IS 'The role id';

COMMENT ON COLUMN SHL_ROLE.ROLE_CODE IS 'The role code';

--------------------------------------------------------
--  DDL for Sequence ROLE_SEQ
--------------------------------------------------------
CREATE SEQUENCE ROLE_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 99999999 MINVALUE 1 NOCACHE;

--------------------------------------------------------
--  DDL for Table USER_ROLE
--------------------------------------------------------

CREATE TABLE USER_ROLE 
(
  USER_ID NUMBER(8) NOT NULL 
, ROLE_ID NUMBER(8) NOT NULL 
);

ALTER TABLE USER_ROLE
ADD CONSTRAINT ROLE_FK2 FOREIGN KEY
(
  ROLE_ID 
)
REFERENCES SHL_ROLE
(
  ROLE_ID 
)
ENABLE;

ALTER TABLE USER_ROLE
ADD CONSTRAINT USER_FK1 FOREIGN KEY
(
  USER_ID 
)
REFERENCES SHL_USER
(
  USER_ID 
)
ENABLE;

COMMENT ON TABLE USER_ROLE IS 'Relation between users and roles';

COMMENT ON COLUMN USER_ROLE.USER_ID IS 'FK user table';

COMMENT ON COLUMN USER_ROLE.ROLE_ID IS 'FK role table';

--------------------------------------------------------
--  DDL for Table SHL_AUTHORITY
--------------------------------------------------------

CREATE TABLE SHL_AUTHORITY 
(
  AUTHORITY_ID NUMBER(8) NOT NULL 
, AUTHORITY_CODE VARCHAR2(50) NOT NULL 
, CONSTRAINT SHL_AUTHORITY_PK PRIMARY KEY 
  (
    AUTHORITY_ID 
  )
  ENABLE 
);

COMMENT ON TABLE SHL_AUTHORITY IS 'The authority table used to assign auths to roles';

COMMENT ON COLUMN SHL_AUTHORITY.AUTHORITY_ID IS 'The auth id';

COMMENT ON COLUMN SHL_AUTHORITY.AUTHORITY_CODE IS 'The auth description';

--------------------------------------------------------
--  DDL for Sequence AUTHORITY_SEQ
--------------------------------------------------------
CREATE SEQUENCE AUTHORITY_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 99999999 MINVALUE 1 NOCACHE;

--------------------------------------------------------
--  DDL for Table AUTHORITY_ROLE
--------------------------------------------------------

CREATE TABLE AUTHORITY_ROLE 
(
  ROLE_ID NUMBER(8) NOT NULL 
, AUTHORITY_ID NUMBER(8) NOT NULL 
);

ALTER TABLE AUTHORITY_ROLE
ADD CONSTRAINT AUTHORITY_FK1 FOREIGN KEY
(
  AUTHORITY_ID 
)
REFERENCES SHL_AUTHORITY
(
  AUTHORITY_ID 
)
ENABLE;

ALTER TABLE AUTHORITY_ROLE
ADD CONSTRAINT ROLE_FK1 FOREIGN KEY
(
  ROLE_ID 
)
REFERENCES SHL_ROLE
(
  ROLE_ID 
)
ENABLE;

COMMENT ON TABLE AUTHORITY_ROLE IS 'Relationship between roles and its authorities';

COMMENT ON COLUMN AUTHORITY_ROLE.ROLE_ID IS 'The role id on from role table';

COMMENT ON COLUMN AUTHORITY_ROLE.AUTHORITY_ID IS 'The authority identifier on auth table';


