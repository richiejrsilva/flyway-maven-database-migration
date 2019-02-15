INSERT INTO REP_TYPE (ID, CODE, DESCRIPTION) VALUES(1,'WEEKLY','The Weekly reporting');
INSERT INTO REP_TYPE (ID, CODE, DESCRIPTION) VALUES(2,'MONTHLY','The monthly reporting');

INSERT INTO REP_REPORT_CONFIG (ID, NAME, DESCRIPTION, REPORT_QUERY, REPORT_TYPE_ID) VALUES (1, 'WEEKLY NAME','A new weekly reporting', 'SELECT u.* FROM HP_ADM.HAGUE_USER u INNER JOIN HP_ADM.USER_NN_ROLE ur ON u.ID = ur.USER_ID INNER JOIN HP_ADM.ROLE r ON ur.ROLE_ID = r.ID', 1);
INSERT INTO REP_REPORT_CONFIG (ID, NAME, DESCRIPTION, REPORT_QUERY, REPORT_TYPE_ID) VALUES (2, 'MONTLY NAME','A new montly reporting', 'SELECT u.* FROM HP_ADM.HAGUE_USER u INNER JOIN HP_ADM.USER_NN_ROLE ur ON u.ID = ur.USER_ID INNER JOIN HP_ADM.ROLE r ON ur.ROLE_ID = r.ID', 2);