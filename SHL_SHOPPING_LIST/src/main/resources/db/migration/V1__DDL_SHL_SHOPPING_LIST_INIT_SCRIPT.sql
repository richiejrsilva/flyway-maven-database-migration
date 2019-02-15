--------------------------------------------------------
--  DDL for SHOPPING_LIST Table
--------------------------------------------------------
CREATE TABLE SHOPPING_LIST 
(
  SH_LIST_ID NUMBER(8) NOT NULL 
, SH_LIST_DESCRIPTION VARCHAR2(100) NOT NULL 
, SH_LIST_OWNER_ID NUMBER(8) NOT NULL 
, CONSTRAINT SHOPPING_LIST_PK PRIMARY KEY 
  (
    SH_LIST_ID 
  )
  ENABLE 
);

COMMENT ON TABLE SHOPPING_LIST IS 'The Shopping list table';

COMMENT ON COLUMN SHOPPING_LIST.SH_LIST_ID IS 'The shopping list id';

COMMENT ON COLUMN SHOPPING_LIST.SH_LIST_DESCRIPTION IS 'The shopping list description';

COMMENT ON COLUMN SHOPPING_LIST.SH_LIST_OWNER_ID IS 'The shopping list owner id';

--------------------------------------------------------
--  DDL for SHOPPING_LIST_ITEMS Table
--------------------------------------------------------

CREATE TABLE SHOPPING_LIST_ITEMS 
(
  SH_LIST_ID NUMBER(8) NOT NULL 
, ITEM_ID NUMBER(8) NOT NULL 
, QUANTITY NUMBER(8) NOT NULL 
);

CREATE INDEX ITEM_INDEX ON SHOPPING_LIST_ITEMS (ITEM_ID);

CREATE INDEX SHOPPING_LIST_INDEX ON SHOPPING_LIST_ITEMS (SH_LIST_ID);

COMMENT ON TABLE SHOPPING_LIST_ITEMS IS 'Items belonging to the shopping list. Relationship between shopping lists and items';

COMMENT ON COLUMN SHOPPING_LIST_ITEMS.SH_LIST_ID IS 'Relationship between shopping list and its items';

COMMENT ON COLUMN SHOPPING_LIST_ITEMS.ITEM_ID IS 'Item reference';

COMMENT ON COLUMN SHOPPING_LIST_ITEMS.QUANTITY IS 'Qte of Items belonging to the shopping list';


--------------------------------------------------------
--  DDL for Sequence SHOPPING_LIST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHL_SHOPPING_LIST"."SHOPPING_LIST_SEQ"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

--------------------------------------------------------
--  DDL for Sequence SHOPPING_LIST_ITEM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHL_SHOPPING_LIST"."SHOPPING_LIST_ITEM_SEQ"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
