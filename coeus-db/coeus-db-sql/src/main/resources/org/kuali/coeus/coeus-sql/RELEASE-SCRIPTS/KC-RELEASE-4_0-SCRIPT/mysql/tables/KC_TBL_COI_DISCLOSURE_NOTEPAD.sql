DELIMITER /
CREATE TABLE COI_DISCLOSURE_NOTEPAD 
   (	COI_DISCLOSURE_NUMBER VARCHAR(20) NOT NULL, 
	SEQUENCE_NUMBER DECIMAL(6,0) NOT NULL, 
	ENTRY_NUMBER DECIMAL(4,0) NOT NULL, 
	COI_NOTEPAD_ENTRY_TYPE_CODE VARCHAR(20), 
	RESTRICTED_VIEW VARCHAR(1) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR(60) NOT NULL, 
	TITLE VARCHAR(500),
	COI_DISCLOSURE_NOTEPAD_ID DECIMAL(12, 0),
	COI_DISCLOSURE_ID_FK DECIMAL(12, 0),
	OBJ_ID VARCHAR(36) NOT NULL,
	VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL,
	NOTE_TYPE VARCHAR(60) NOT NULL,
	COMMENTS LONGTEXT,
	PROJECT_ID VARCHAR(12),
	ORIGINAL_COI_DISCLOSURE_ID  DECIMAL(12,0),
	ENTITY_NUMBER VARCHAR(10),
	ENTITY_SEQUENCE_NUMBER DECIMAL(6,0)
) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/
DELIMITER ;
