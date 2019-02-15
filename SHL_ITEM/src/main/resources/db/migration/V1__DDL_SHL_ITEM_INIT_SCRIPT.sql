--------------------------------------------------------
--  DDL for Table ITEM
--------------------------------------------------------
CREATE TABLE ITEM 
(
  ITEM_ID NUMBER(8) NOT NULL 
, ITEM_DESCRIPTION VARCHAR2(100) 
, CONSTRAINT ITEM_PK PRIMARY KEY 
  (
    ITEM_ID 
  )
  ENABLE 
);

COMMENT ON TABLE ITEM IS 'The item table';

COMMENT ON COLUMN ITEM.ITEM_ID IS 'The item id';

COMMENT ON COLUMN ITEM.ITEM_DESCRIPTION IS 'The item descrption';

--------------------------------------------------------
--  DDL for Sequence ITEM_SEQ
--------------------------------------------------------

CREATE SEQUENCE  "SHL_ITEM"."ITEM_SEQ"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

