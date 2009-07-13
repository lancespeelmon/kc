
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (100, 'Pending/In Progress', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (101, 'Submitted to IRB', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (102, 'Specific Minor Revisions Required', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (103, 'Deferred', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (104, 'Substantive Revisions Required', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (105, 'Amendment in Progress', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (106, 'Renewal in Progress', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (200, 'Active - Open to Enrollment', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (201, 'Active - Closed to Enrollment', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (202, 'Active - Data Analysis Only', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (203, 'Exempt', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (300, 'Closed Administratively for lack of response', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (301, 'Closed by Investigator', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (302, 'Suspended by Investigator', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (303, 'Do Not Use - delete later - Terminated by Investigator', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (304, 'Withdrawn', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (305, 'Expired', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (306, 'Disapproved', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (307, 'Terminated by IRB', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (308, 'Suspended by IRB', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (309, 'Not Human Subjects Research', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (310, 'IRB review not required', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');
Insert into PROTOCOL_STATUS
   (PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
 Values
   (311, 'Suspended by DSMB', TO_DATE('12/20/2007 13:25:59', 'MM/DD/YYYY HH24:MI:SS'), 'COEUS');

INSERT INTO PROTOCOL_STATUS 
	(PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP,UPDATE_USER) 
 VALUES 
 	('400', 'Amendment Incorporated into Protocol', sysdate, 'KRADEV');

INSERT INTO PROTOCOL_STATUS 
	(PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP,UPDATE_USER)
 VALUES 
	('401', 'Renewal Incorporated into Protocol', sysdate, 'KRADEV');

COMMIT;
