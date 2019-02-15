-- Creating shopping lists
Insert into GH_SHOP_LIST.SHOPPING_LIST (SH_LIST_ID,SH_LIST_DESCRIPTION,SH_LIST_OWNER_ID) values ('1','Shopping list 1','1');
Insert into GH_SHOP_LIST.SHOPPING_LIST (SH_LIST_ID,SH_LIST_DESCRIPTION,SH_LIST_OWNER_ID) values ('2','Shopping list 2','2');
Insert into GH_SHOP_LIST.SHOPPING_LIST (SH_LIST_ID,SH_LIST_DESCRIPTION,SH_LIST_OWNER_ID) values ('3','Shopping list 3','3');

-- Adding items to the shopping lists previously created
Insert into GH_SHOP_LIST.SHOPPING_LIST_ITEMS (SH_LIST_ID,ITEM_ID,QUANTITY) values ('1','1','3');
Insert into GH_SHOP_LIST.SHOPPING_LIST_ITEMS (SH_LIST_ID,ITEM_ID,QUANTITY) values ('1','2','2');
Insert into GH_SHOP_LIST.SHOPPING_LIST_ITEMS (SH_LIST_ID,ITEM_ID,QUANTITY) values ('2','1','4');
Insert into GH_SHOP_LIST.SHOPPING_LIST_ITEMS (SH_LIST_ID,ITEM_ID,QUANTITY) values ('2','2','5');
Insert into GH_SHOP_LIST.SHOPPING_LIST_ITEMS (SH_LIST_ID,ITEM_ID,QUANTITY) values ('3','1','1');
Insert into GH_SHOP_LIST.SHOPPING_LIST_ITEMS (SH_LIST_ID,ITEM_ID,QUANTITY) values ('3','2','2');